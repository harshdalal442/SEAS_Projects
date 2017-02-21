/**
 * Filesystem_functions.C
 * Authors: Raj Derasari, Harsh Dalal
 * Version: 1.2.5, last edited 7/12/2016, Documentation added 21/11/2016
**/

#include <stdio.h>				// standard i/o
#include <string.h>				// for string functions
#include <stdlib.h>				// for some functionsp(
#include <time.h>				// for time and logging
#include <dirent.h>
#include <limits.h>
#include <errno.h>

#include "filesystem_functions.h"
#include "filesystem_utilities.h"
#include "disk_functions.h"

#include <pthread.h>
#include <semaphore.h>


Inode inode[MAX_INODE];				// inode structures instantiated
SuperBlock superBlock;				// superBlock instantiated
Dentry curDir;						// curDir dentry instantiated

// filesystem variables
int hasRemovedBefore = 0;			// if file has been removed before
int curDirBlock;					// curDirBlock = current block inside direcotry
int currentDirectoryInode;			// inode of current directory
char inodeMap[MAX_INODE / 8];
char blockMap[MAX_BLOCK / 8];

int logCounter=1;					// start primary key as 1
FILE* loggingFile=NULL;				// default value NULL
time_t currTime;					// instantiate time variable
struct tm* logTime=NULL;			// default value NULL

/**
 * generate_log(): Write the input commands to log file
 * @param char* message : Command or message string to log
 * @param char* arg1 : 1st argument to log
 * @param char* arg2 : 2nd argument to log
 * @param char* arg3 : 3rd argument to log
 * @param char* arg4 : 4th argument to log
 * @return null
 * @author Raj Derasari, added it on 11/11/2016 and documented on 21/11/2016 16:00
**/
void generate_log(char* message,char* arg1,char *arg2,char*arg3,char*arg4)
{
	pthread_mutex_lock(&mutexer);
	logTime=localtime(&currTime);				// get current time
	fprintf(loggingFile, "%d:%.24s:%s:%s:%s:%s\n",logCounter++,asctime(logTime),message,arg1,arg2,arg3,arg4);
	fflush(loggingFile);		// flush to log file, fclose() can now be called by thread to save the file
	pthread_mutex_unlock(&mutexer);						// create a lock <- this causes problems if two clients conn to server on MISS webpage (NOT HIT) at the SAME TIME
}

/**
 * autosave_log(): save,close log file and reopen it
 * @param NULL
 * @return null
 * @author Raj Derasari, added it on 11/11/2016 and documented on 21/11/2016 16:14
**/
void *autosave_log(void *vargp)
{
	pthread_mutex_lock(&mutexer);
	if(loggingFile!=NULL) fflush(loggingFile);
	if(loggingFile!=NULL) fclose(loggingFile);
	pthread_mutex_unlock(&mutexer);
	//reopen loggingFile
	loggingFile=fopen("logfile.txt","ab+");
}

/**
 * fs_mount(): mount the filesystem of name passed in parameter
 * @param char *name: file name of fs to mount
 * @return 0 on succesfful mounting. This function will never return an error
 * @author Raj Derasari, added it on 11/11/2016 and documented on 21/11/2016 16:17
**/
int fs_mount(char * name)
{
	int i = 0;
	int index = 0;
	int inode_index = 0;
	int numInodeBlock = (sizeof(Inode) * MAX_INODE) / BLOCK_SIZE;		// store inode datas

	// if disk mount returns true
	if (disk_mount(name) == 1)
	{
		disk_read(0, (char * ) & superBlock);
		disk_read(1, inodeMap);
		disk_read(2, blockMap);
		for (i = 0; i < numInodeBlock; i++)
		{
			index = i + 3;
			disk_read(index, (char * )(inode + inode_index));
			inode_index += (BLOCK_SIZE / sizeof(Inode));
		}
		curDirBlock = inode[0].directBlock[0];
		disk_read(curDirBlock, (char * ) & curDir);
	}
	else
	{
		superBlock.freeBlockCount = MAX_BLOCK - (1 + 1 + 1 + numInodeBlock);
		superBlock.freeInodeCount = MAX_INODE;

		// set inode map data as zeros
		for (i = 0; i < MAX_INODE / 8; i++)
			set_bit(inodeMap, i, 0);

		// allocate
		for (i = 0; i < MAX_BLOCK / 8; i++)
		{
			if (i < (1 + 1 + 1 + numInodeBlock))
				set_bit(blockMap, i, 1);
			else
				set_bit(blockMap, i, 0);
		}

		// now store data in inode and disk structures
		int rootInode = get_free_inode();
		currentDirectoryInode = rootInode;
		curDirBlock = get_free_block();
		inode[rootInode].type = directory;
		inode[rootInode].owner = 0;
		inode[rootInode].group = 0;
		gettimeofday( & (inode[rootInode].created), NULL);
		gettimeofday( & (inode[rootInode].lastAccess), NULL);
		inode[rootInode].size = 1;
		inode[rootInode].blockCount = 1;
		inode[rootInode].directBlock[0] = curDirBlock;
		curDir.numEntry = 1;
		strncpy(curDir.dentry[0].name, ".", 1);
		curDir.dentry[0].name[1] = '\0';
		curDir.dentry[0].inode = rootInode;
		currentDirectoryInode = rootInode;

		// write disk data
		disk_write(curDirBlock, (char * ) & curDir);
	}
	return 0;									// return now. This function never returns an error
}

/**
 * fs_unmount(): unmount the filesystem of name passed in parameter
 * @param char *name: file name of fs to unmount and save to
 * @return 0 on succesfful mounting. This function will never return an error
 * @author Raj Derasari, added it on 11/11/2016 and documented on 21/11/2016 16:21
**/
int fs_unmount(char * name)
{
	int numInodeBlock = (sizeof(Inode) * MAX_INODE) / BLOCK_SIZE;
	int i, inode_index = 0;
	int index;
	disk_write(0, (char * ) & superBlock);		// write superblock, inodemap and block-mapping
	disk_write(1, inodeMap);
	disk_write(2, blockMap);

	for (i = 0; i < numInodeBlock; i++)
	{
		index = i + 3;
		disk_write(index, (char * )(inode + inode_index));
		inode_index += (BLOCK_SIZE / sizeof(Inode));
	}

	// write to disk and unmount. These calls are executed within one machine cycle so no exclusion required
	disk_write(curDirBlock, (char * ) & curDir);
	disk_unmount(name);			// file writing in C is incredibly fast.
	return 0;
}

/**
 * search_cur_dir(): unmount the filesystem of name passed in parameter
 * @param char *name: file name to search for
 * @return inode of file/directory entry with filename="*name" or -1 if error/not found
 * @author Raj Derasari, added it on 11/11/2016 and documented on 21/11/2016 16:24
**/
int search_cur_dir(char * name)
{
	int i;
	// linear search in directory for the file
	for (i = 0; i < MAX_DIR_ENTRY; i++)
	{
		if (compare(name, curDir.dentry[i].name))
			return curDir.dentry[i].inode;
	}
	return -1;	// file wasnt found, return -1
}

/**
 * create(): create a file in our filesystem
 * @param char *name: file name to create
 * @param int size: size of file to create
 * @return 0 if successfully created, or -1 if error encountered
 * @author Raj Derasari, added it on 11/11/2016 and documented on 21/11/2016 16:41
**/
int create(char * name, int size)
{
	int foundSpot = 0;			// if a spot for file has been found or not
	int i;						// use in loop
	int inodeNum;
	int numBlock;

	if (size >= MAX_FILE_SIZE)
	{
		errorMsg("File create error: size too much.\n");
		return -1;
	}

	inodeNum = search_cur_dir(name);
	if (inodeNum >= 0)
	{
		errorMsg("already exists\n");
		return -1;
	}


	if (curDir.numEntry + 1 > (BLOCK_SIZE / sizeof(DirectoryEntry)))
	{
		errorMsg("File create error: directory is full!\n");
		return -1;
	}

	numBlock = size / BLOCK_SIZE;
	if (size % BLOCK_SIZE > 0) 					// if remainder is non-zero, and extra block is required
		numBlock++;

	if (numBlock > superBlock.freeBlockCount)
	{
		errorMsg("File create error: not enough blocks\n");
		return -1;
	}
	if (superBlock.freeInodeCount < 1)
	{
		errorMsg("File create error: not enough inodes\n");
		return -1;
	}

	char * tmp = (char * ) malloc(sizeof(int) * size + 1);
	generate_string(tmp, size);
	if(size>0)
		printf("the generated random string was: \n%s\n", tmp);
	inodeNum = get_free_inode();

	if (inodeNum < 0)
	{
		free(tmp);
		{
			errorMsg("File create error: not enough inode.\n");
			return -1;
		}
	}

	inode[inodeNum].type = file;			// file created, not directory
	inode[inodeNum].owner = 1;
	inode[inodeNum].group = 2;
	gettimeofday( & (inode[inodeNum].created), NULL);
	gettimeofday( & (inode[inodeNum].lastAccess), NULL);
	inode[inodeNum].size = size;
	inode[inodeNum].blockCount = numBlock;

	// if file of this name was removed before
	if (hasRemovedBefore == 1)
	{
		for (i = 0; i < MAX_DIR_ENTRY; i++)
		{
			if ((curDir.dentry[i].inode == 0) && strcmp(curDir.dentry[i].name, "") == 0)
			{
				strncpy(curDir.dentry[i].name, name, strlen(name));
				curDir.dentry[i].name[strlen(name)] = '\0';
				curDir.dentry[i].inode = inodeNum;
				curDir.numEntry++;
				for (i = 0; i < numBlock; i++)
				{
					int block = get_free_block();
					if (block == -1) 		// if no free blocks
					{
						free(tmp);
						{
							errorMsg("File create error: get_free_block failed\n");
							return -1;
						}
					}
					inode[inodeNum].directBlock[i] = block;			// allocate inode
					disk_write(block, tmp + (i * BLOCK_SIZE));
				}
				printf("File created: %s, inode %d, size %d\n", name, inodeNum, size);
				free(tmp);
				return 0;
			}
		}
	}
	else 		// wasnt removed before, try to allocate new memory
	{
		strncpy(curDir.dentry[curDir.numEntry].name, name, strlen(name));
		curDir.dentry[curDir.numEntry].name[strlen(name)] = '\0';
		curDir.dentry[curDir.numEntry].inode = inodeNum;
		curDir.numEntry++;
		for (i = 0; i < numBlock; i++)
		{
			int block = get_free_block();
			if (block == -1)
			{
				free(tmp);
				{
					errorMsg("File create error: get_free_block failed\n");
					return -1;
				}
			}
			inode[inodeNum].directBlock[i] = block;
			disk_write(block, tmp + (i * BLOCK_SIZE));
		}
		printf("File created: %s, inode %d, size %d\n", name, inodeNum, size);
		free(tmp);
	}
	return 0;
}

/**
 *  ln(): create a symbolic link
 *  added  7/12/16  1:41 AM <<< WHY WAS I AWAKE AT THIS TIME DOING THIS THING
**/
int ln(char* arg1, char* arg2)
{
	if(strcmp(arg1,"")==0 || strcmp(arg2,"")==0)			// if any arg is NULL
	{
		errorMsg("Error executing ln: Use 'ln <file_to_link> <symbolic_link_name>'\n");
		return -1;
	}

	int INODE=-999;
	INODE = search_cur_dir(arg1);							// gets -1 if arg1 NOT FOUND
	if (INODE<0)
	{
		errorMsg("Cannot create link: File does not exist'\n");
		return -1;
	}
	if(inode[INODE].type==directory)
	{
		errorMsg("Cannot create link: It is a directory\n");
		return -1;
	}

	if (search_cur_dir(arg2)>0)									// gets >0 if arg2 already exists hence no symlink possible
	{
		errorMsg("Cannot create link: A directory/file with the same name exists.'\n");
		return -1;
	}

	//Logical operations complete: now check for file operations
	if (curDir.numEntry + 1 > (BLOCK_SIZE / sizeof(DirectoryEntry)))
	{
		errorMsg("Cannot create link: directory is full\n");
		return -1;
	}
	if (1 >= superBlock.freeBlockCount)
	{
		errorMsg("Cannot create link: not enough blocks\n");
		return -1;
	}
	if (superBlock.freeInodeCount < 1)
	{
		errorMsg("Cannot create link: not enough inodes\n");
		return -1;
	}

	int size=1;
	int numBlock=1;

	char *tmp = (char *) malloc(sizeof(int) * size + 1);
	sprintf(tmp,"%d",INODE);

	int inodeNum = get_free_inode();

	if (inodeNum < 0)
	{
		free(tmp);
		{
			errorMsg("Link create error: directory inodes are full.\n");
			return -1;
		}
	}

	inode[inodeNum].type = link;							// file created, not directory
	inode[inodeNum].owner = 1;
	inode[inodeNum].group = 2;
	gettimeofday( & (inode[inodeNum].created), NULL);
	gettimeofday( & (inode[inodeNum].lastAccess), NULL);
	inode[inodeNum].size = size;
	inode[inodeNum].blockCount = numBlock;
	int i=0;
	if (hasRemovedBefore == 1)
	{
		for (i = 0; i < MAX_DIR_ENTRY; i++)
		{
			if ((curDir.dentry[i].inode == 0) && strcmp(curDir.dentry[i].name, "") == 0)
			{
				strncpy(curDir.dentry[i].name, arg2, strlen(arg2));
				curDir.dentry[i].name[strlen(arg2)] = '\0';
				curDir.dentry[i].inode = inodeNum;
				curDir.numEntry++;
				for (i = 0; i < numBlock; i++)
				{
					int block = get_free_block();
					if (block == -1) 		// if no free blocks
					{
						free(tmp);
						errorMsg("File create error: get_free_block failed\n");
						return -1;
					}
					inode[inodeNum].directBlock[i] = block;			// allocate inode
					disk_write(block, tmp + (i * BLOCK_SIZE));
				}
				printf("Link created: %s, inode %d, size %d\n", arg2, inodeNum, size);
				printf("%s\n", tmp);
				return 0;
			}
		}
	}
	else 		// wasnt removed before, try to allocate new memory
	{
		strncpy(curDir.dentry[curDir.numEntry].name, arg2, strlen(arg2));
		curDir.dentry[curDir.numEntry].name[strlen(arg2)] = '\0';
		curDir.dentry[curDir.numEntry].inode = inodeNum;
		curDir.numEntry++;
		for (i = 0; i < numBlock; i++)
		{
			int block = get_free_block();
			if (block == -1)
			{
				errorMsg("File create error: get_free_block failed\n");
				return -1;
			}
			inode[inodeNum].directBlock[i] = block;
			disk_write(block, tmp + (i * BLOCK_SIZE));
		}
		printf("Link created: %s, inode %d, size %d\n", arg2, inodeNum, size);
	}
	return 0;
}


/**
 * cat(): view a file in our filesystem
 * @param char *name: file name to create
 * @return 0 if successfully created, or -1 if error encountered
 * @author Raj Derasari, added it on 11/11/2016 and documented on 21/11/2016 16:51
**/
int cat(char *name)
{
	char fileContents[BLOCK_SIZE];
	int inodeNum = 0;
	inodeNum= search_cur_dir(name);
	if (inodeNum == -1) 							// file not found ie. doesnt exist
	{
		errorMsg("cat error: file does not exist\n");
		return -1;
	}
	else if(inode[inodeNum].type==link)
	{
		gettimeofday( & (inode[inodeNum].lastAccess), NULL);
		int blockNum = inode[inodeNum].blockCount;		// does exist, proceed to read
		int block = inode[inodeNum].directBlock[0];	// direct blocks only
		disk_read(block, fileContents);			//read from disk
		inodeNum = fileContents[0]-48;		// convert stored character to integer
		file_read(name,0,inode[inodeNum].size);
	}
	else
	{
		gettimeofday( & (inode[inodeNum].lastAccess), NULL);
		file_read(name,0,inode[inodeNum].size);
	}
	return 0;
}

/**
 * file_read(): view a file in our filesystem
 * @param char *name: file name to read
 * @param int offset: location to start reading from
 * @param int size: number of bytes of data to be read
 * @return 0 if successfully created, or -1 if error encountered
 * @author Raj Derasari, added it on 11/11/2016 and documented on 21/11/2016 17:00
**/
int file_read(char * name, int offset, int size)
{
	// default values/ initialize
	int i = 0;
	int blockNum = 0;

	// store file contents
	char fileContents[MAX_BLOCK + MAX_BLOCK];
	char buffer_holder[MAX_BLOCK + MAX_BLOCK];

	if (offset < 0 || size < 0)		// wrong values
	{
		memset(fileContents, 0, sizeof(fileContents));
		memset(buffer_holder, 0, sizeof(buffer_holder));
		{
			errorMsg("Offset and size must be non-zero\n");
			return -1;
		}
	}

	int inodeNum = 0;
	inodeNum = search_cur_dir(name);		//get inode number of file
	if (inodeNum == -1)						// file not found
	{
		memset(fileContents, 0, sizeof(fileContents));
		memset(buffer_holder, 0, sizeof(buffer_holder));
		{
			errorMsg("File reading error: file does not exist\n");
			return -1;
		}
	}
	else if(inode[inodeNum].type==directory)
	{
		errorMsg("read error: is a directory\n");
		return -1;
	}
	else
	{
		if(inode[inodeNum].type==link)
		{
			blockNum = inode[inodeNum].blockCount;		// does exist, proceed to read
			int block = inode[inodeNum].directBlock[0];	// direct blocks only
			disk_read(block, fileContents);			//read from disk
			inodeNum = fileContents[0]-48;		// convert stored character to integer
		}
		blockNum = inode[inodeNum].blockCount;			// get blocks of file
		for (i = 0; i < blockNum; i++)
		{
			int block = inode[inodeNum].directBlock[i];
			disk_read(block, fileContents);				//read the data
			strcat(buffer_holder, fileContents);
		}

		if (offset > strlen(buffer_holder))
		{
			memset(fileContents, 0, sizeof(fileContents));
			memset(buffer_holder, 0, sizeof(buffer_holder));
			{
				errorMsg("File read error: The offset is greater than the size of the file contents\n");
				return -1;
			}
		}
		else
			printf("%.*s\n", size, (buffer_holder + offset));

	memset(fileContents, 0, sizeof(fileContents));
	memset(buffer_holder, 0, sizeof(buffer_holder));
	}
	gettimeofday( & (inode[inodeNum].lastAccess), NULL);
	return 0;
}

/**
 * modify_file(): write to a file in our filesystem : FILE MUST EXIST
 * @param char *name: file name to write to
 * @param int offset: location to start reading from
 //	   * @param int size: number of bytes of data to be read
 * @param char* buf: output string
 * @return 0 if successfully created, or -1 if error encountered
 * @author Raj Derasari, added it on 11/11/2016 and documented on 21/11/2016 17:05
**/
int modify_file(char * name, int offset, char * buf)
{
	int sizeofstr = strlen(buf);

	// default values/ initialize
	int i = 0;
	int inodeNum = 0;
	int blockNum = 0;

	// storage variables
	char temp[MAX_BLOCK + MAX_BLOCK];
	char temp2[MAX_BLOCK + MAX_BLOCK];
	char temp3[MAX_BLOCK + MAX_BLOCK];

	char fileContents[MAX_BLOCK + MAX_BLOCK];
	char buffer_holder[MAX_BLOCK + MAX_BLOCK];

	if (offset < 0)		// wrong values
	{
		memset(temp, 0, sizeof(temp));
		memset(temp2, 0, sizeof(temp2));
		memset(temp3, 0, sizeof(temp3));
		memset(fileContents, 0, sizeof(fileContents));
		memset(buffer_holder, 0, sizeof(buffer_holder));
		{
			errorMsg("Offset must be non-zero\n");
			return -1;
		}
	}

	inodeNum = search_cur_dir(name);		// search for inode
	if (inodeNum == -1)							// inode not found
	{
		memset(temp, 0, sizeof(temp));
		memset(temp2, 0, sizeof(temp2));
		memset(temp3, 0, sizeof(temp3));
		memset(fileContents, 0, sizeof(fileContents));
		memset(buffer_holder, 0, sizeof(buffer_holder));
		{
			errorMsg("File write error: file does not exist\n");
			return -1;
		}
	}
	else if(inode[inodeNum].type != file)
	{
		errorMsg("Cannot call 'write' on a non-file inode\n");
		return -1;
	}
	else
	{
		blockNum = inode[inodeNum].blockCount;
		for (i = 0; i < blockNum; i++)
		{
			int block = inode[inodeNum].directBlock[i];
			disk_read(block, fileContents);
			strcat(buffer_holder, fileContents);
		}

		if (offset > strlen(buffer_holder))
		{
			memset(temp, 0, sizeof(temp));
			memset(temp2, 0, sizeof(temp2));
			memset(temp3, 0, sizeof(temp3));
			memset(fileContents, 0, sizeof(fileContents));
			memset(buffer_holder, 0, sizeof(buffer_holder));
			{
				errorMsg("The offset is greater than the size of the file contents\n");
				return -1;
			}
		}
		else
		{
			sprintf(temp3, "%.*s", offset, (buffer_holder));
			sprintf(temp, "%s", buf);
			strcat(temp3, temp);
			sprintf(temp2, "%s", (buffer_holder + offset + sizeofstr));
			strcat(temp3, temp2);
			printf("%s\n", temp3);
			if (inode[inodeNum].size == strlen(temp3))
			{
				int k = 0;
				for (k = 0; k < blockNum; k++)
				{
					int block = inode[inodeNum].directBlock[k];
					disk_write(block, temp3 + (k * BLOCK_SIZE));
				}
			}
			else
			{
				if (strlen(temp3) >= MAX_FILE_SIZE)
				{
					memset(temp, 0, sizeof(temp));
					memset(temp2, 0, sizeof(temp2));
					memset(temp3, 0, sizeof(temp3));
					memset(fileContents, 0, sizeof(fileContents));
					memset(buffer_holder, 0, sizeof(buffer_holder));
					{
						errorMsg("file write error: size too high");
						return -1;
					}
				}
				int newBlockNum = (sizeofstr + strlen(buffer_holder)) / BLOCK_SIZE;

				if ((sizeofstr + strlen(buffer_holder)) % BLOCK_SIZE > 0)
					newBlockNum++;

				if (newBlockNum == blockNum)
				{
					inode[inodeNum].size = strlen(temp3);
					int k = 0;
					for (k = 0; k < blockNum; k++)
					{
						int block = inode[inodeNum].directBlock[k];
						disk_write(block, temp3 + (k * BLOCK_SIZE));
					}
				}
				else
				{
					int count = 0;
					int blockDifference = newBlockNum - blockNum;
					if (blockDifference > superBlock.freeBlockCount)
					{

						memset(temp, 0, sizeof(temp));
						memset(temp2, 0, sizeof(temp2));
						memset(temp3, 0, sizeof(temp3));
						memset(fileContents, 0, sizeof(fileContents));
						memset(buffer_holder, 0, sizeof(buffer_holder));
						{
							errorMsg("File write error: File create failed: not enough space\n");
							return -1;
						}
					}

					inode[inodeNum].size = strlen(temp3);
					inode[inodeNum].blockCount = newBlockNum;
					int k = 0;

					for (k = 0; k < newBlockNum; k++)
					{
						if (count != blockDifference)
						{
							int block = inode[inodeNum].directBlock[k];
							disk_write(block, temp3 + (k * BLOCK_SIZE));
							count++;
						}
						else
						{
							int block = get_free_block();
							if (block == -1)
							{
								memset(temp, 0, sizeof(temp));
								memset(temp2, 0, sizeof(temp2));
								memset(temp3, 0, sizeof(temp3));
								memset(fileContents, 0, sizeof(fileContents));
								memset(buffer_holder, 0, sizeof(buffer_holder));
								{
									errorMsg("File write error: get_free_block failed\n");
									return -1;
								}
							}
							inode[inodeNum].directBlock[k] = block;
							disk_write(block, temp3 + (k * BLOCK_SIZE));
						}
					}
				}
			}
		}
		gettimeofday( & (inode[inodeNum].lastAccess), NULL);
		memset(temp, 0, sizeof(temp));
		memset(temp2, 0, sizeof(temp2));
		memset(temp3, 0, sizeof(temp3));
		memset(fileContents, 0, sizeof(fileContents));
		memset(buffer_holder, 0, sizeof(buffer_holder));
	}
	return 0;
}

/**
 * rm(): remove a file, which obviously, must exist
 * @param char *name: file name to write to
 * @return 0 if removed, or -1 if error encountered
 * @author Raj Derasari, added it on 11/11/2016 and documented on 21/11/2016 17:07
**/
int rm(char * name)
{
	int inodeNum = 0;
	int i = 0;
	int counter = 0;
	inodeNum = search_cur_dir(name);		// search for the file

	if (inodeNum < 0)
	{
		errorMsg("File remove failed:  file doesn't exist.\n");
		return -1;
	}

	if (inode[inodeNum].type == file || inode[inodeNum].type == link)			// if file
	{
		for (i = 0; i < MAX_DIR_ENTRY; i++)
		{
			if (curDir.dentry[i].inode == inodeNum)			// found
			{
				hasRemovedBefore = 1;
				strncpy(curDir.dentry[i].name, "", strlen(""));		// set name as null
				curDir.dentry[i].name[strlen("")] = '\0';
				curDir.dentry[i].inode = 0;
				set_bit(inodeMap, inodeNum, 0);
				superBlock.freeInodeCount++;			// free counters
				curDir.numEntry--;
				int numBlock = inode[inodeNum].blockCount;
				for (i = 0; i < numBlock; i++)
				{
					set_bit(blockMap, inode[inodeNum].directBlock[i], 0);
				}
				superBlock.freeBlockCount = numBlock + superBlock.freeBlockCount;
				gettimeofday( & (inode[inodeNum].lastAccess), NULL);
				break;
			}
		}
	}
	else		// if directory, fail
	{
		errorMsg("error: This is a directory, remove using removedirectory \n");
		return -1;
	}

	return 0;
}

/**
 * stat(): see stats of a file
 * @param char *name: file name to stat
 * @return 0 if successful, or -1 if error encountered
 * @author Raj Derasari, added it on 11/11/2016 and documented on 21/11/2016 17:15
**/
int stat(char * name)
{
	int inodeNum = search_cur_dir(name);
	char timebuf[28];

	if (inodeNum < 0)
	{
		errorMsg("File cat error: file is not exist.\n");
		return -1;
	}

	printf("Inode = %d\n", inodeNum);

	if (inode[inodeNum].type == file)
		printf("type = file\n");
	else if (inode[inodeNum].type == link)
		printf("type = link\n");
	else
		printf("type = directory\n");

	printf("owner = %d\n", inode[inodeNum].owner);
	printf("group = %d\n", inode[inodeNum].group);
	printf("size = %d\n", inode[inodeNum].size);
	printf("num of block = %d\n", inode[inodeNum].blockCount);

	format_timeval( & (inode[inodeNum].created), timebuf, 28);
	printf("Created time = %s\n", timebuf);

	format_timeval( & (inode[inodeNum].lastAccess), timebuf, 28);
	printf("Last accessed time = %s\n", timebuf);
	return 0;
}

/**
 * makedirectory(): create a directory
 * @param char *name: dir name to create
 * @return 0 if successful, or -1 if error encountered
 * @author Raj Derasari, added it on 11/11/2016 and documented on 21/11/2016 17:16
**/
int makedirectory(char * name)
{
	int i;
	int parentDirInode;
	int currentDirInode;
	int oldCurDirBlock;
	int inodeNum = search_cur_dir(name);

	if (inodeNum >= 0)
	{
		errorMsg("Directory create failed, already exists.\n");
		return -1;
	}

	if (curDir.numEntry + 1 > (BLOCK_SIZE / sizeof(DirectoryEntry)))
	{
		errorMsg("Directory create failed: directory is full!\n");
		return -1;
	}

	if (superBlock.freeInodeCount < 1)
	{
		errorMsg("Directory create failed: not enough inodes\n");
		return -1;
	}

	int directoryInode = get_free_inode();

	if (directoryInode < 0)
	{
		errorMsg("Directory create error: not enough inode.\n");
		return -1;
	}

	oldCurDirBlock = curDirBlock;
	curDirBlock = get_free_block();

	if (curDirBlock == -1)
	{
		errorMsg("Directory create error: get_free_block failed\n");
		return -1;
	}

	inode[directoryInode].type = directory;
	inode[directoryInode].owner = 1;
	inode[directoryInode].group = 2;
	gettimeofday( & (inode[directoryInode].created), NULL);
	gettimeofday( & (inode[directoryInode].lastAccess), NULL);
	inode[directoryInode].size = 1;
	inode[directoryInode].blockCount = 1;
	inode[directoryInode].directBlock[0] = curDirBlock;

	if (hasRemovedBefore == 1)
	{
		for (i = 0; i < MAX_DIR_ENTRY; i++)
		{
			if ((curDir.dentry[i].inode == 0) && strcmp(curDir.dentry[i].name, "") == 0)
			{
				parentDirInode = currentDirectoryInode;
				strncpy(curDir.dentry[i].name, name, strlen(name));
				curDir.dentry[i].name[strlen(name)] = '\0';
				curDir.dentry[i].inode = directoryInode;
				currentDirInode = directoryInode;
				curDir.numEntry++;
				break;
			}
		}
	}
	else
	{
		parentDirInode = currentDirectoryInode;
		strncpy(curDir.dentry[curDir.numEntry].name, name, strlen(name));
		curDir.dentry[curDir.numEntry].name[strlen(name)] = '\0';
		curDir.dentry[curDir.numEntry].inode = directoryInode;
		currentDirInode = directoryInode;
		curDir.numEntry++;
	}
	disk_write(oldCurDirBlock, (char * ) & curDir);
	bzero( & curDir, sizeof(curDir));

	curDir.numEntry = 0;
	strncpy(curDir.dentry[curDir.numEntry].name, ".", 1);
	curDir.dentry[curDir.numEntry].name[1] = '\0';
	curDir.dentry[curDir.numEntry].inode = currentDirInode;

	curDir.numEntry++;
	strncpy(curDir.dentry[curDir.numEntry].name, "..", 2);
	curDir.dentry[curDir.numEntry].name[2] = '\0';
	curDir.dentry[curDir.numEntry].inode = parentDirInode;

	curDir.numEntry++;
	disk_write(inode[directoryInode].directBlock[0], (char * ) & curDir);
	disk_read(oldCurDirBlock, (char * ) & curDir);

	curDirBlock = oldCurDirBlock;

	printf("Directory created: %s, inode %d, size %d\n", name, directoryInode, inode[directoryInode].size);

	return 0;
}

/**
 * removedirectory(): remove a directory
 * @param char *name: dir name to remove
 * @return 0 if successful, or -1 if error encountered
 * @author Raj Derasari, added it on 11/11/2016 and documented on 21/11/2016 17:18
**/
int removedirectory(char * name)
{
	int i;
	int j;

	if (strcmp(name, ".") == 0)
	{
		errorMsg("Directory remove error: Can't remove the directory you are in.\n");
		return -1;
	}

	else if (strcmp(name, "..") == 0)
	{
		errorMsg("Directory remove error: Can't remove parent directory because it contains files.\n");
		return -1;
	}

	int directoryInodeNum = search_cur_dir(name);

	if (directoryInodeNum < 0)
	{
		errorMsg("Directory remove error: directory does not exist.\n");
		return -1;
	}
	if (inode[directoryInodeNum].type == directory)
	{
		changedir(name);
		if (curDir.numEntry > 2)
		{
			changedir("..");
			{
				errorMsg("Directory remove error: The directory has files in it. Cannot remove\n");
				return -1;
			}
		}
		changedir("..");
		hasRemovedBefore = 1;
		for (j = 0; j < MAX_DIR_ENTRY; j++)
		{
			if (curDir.dentry[j].inode == directoryInodeNum)
			{
				strncpy(curDir.dentry[j].name, "", strlen(""));
				curDir.dentry[j].name[strlen("")] = '\0';
				curDir.dentry[j].inode = 0;
				set_bit(inodeMap, directoryInodeNum, 0);
				superBlock.freeInodeCount++;
				set_bit(blockMap, inode[directoryInodeNum].directBlock[i], 0);
				superBlock.freeBlockCount++;
				curDir.numEntry--;
			}
		}
	}
	else
	{
		errorMsg("You are trying to remove a file by using 'removedirectory'. Use 'rm' to remove a file instead \n");
		return -1;
	}
	return 0;
}

/**
 * changedir(): change to a directory
 * @param char *name: dir name to remove
 * @return 0 if successful, or -1 if error encountered
 * @author Raj Derasari, added it on 11/11/2016 and documented on 21/11/2016 17:18
**/
int changedir(char * name)
{
	if (strcmp(name, ".") == 0)
	{
		errorMsg("Change directory failed. Cannot traverse to current directory!\n");
		return -1;
	}
	else if (strcmp(name, "..") == 0)
	{
		int changeFromDirectoryInode = search_cur_dir(".");
		int changeFromDirectoryCurDirBlock = inode[changeFromDirectoryInode].directBlock[0];
		int changeToParentDirectoryInode = search_cur_dir("..");
		int changeToParentDirectoryCurDirBlock = inode[changeToParentDirectoryInode].directBlock[0];
		if (changeFromDirectoryInode == 0)
		{
			errorMsg("Change directory error: Currently in this directory\n");
			return -1;
		}

		disk_write(changeFromDirectoryCurDirBlock, (char * ) & curDir);
		currentDirectoryInode = changeToParentDirectoryInode;
		curDirBlock = changeToParentDirectoryCurDirBlock;
		gettimeofday( & (inode[currentDirectoryInode].lastAccess), NULL);
		disk_read(changeToParentDirectoryCurDirBlock, (char * ) & curDir);
	}
	else
	{
		int changeToDirectoryInode = search_cur_dir(name);
		if (changeToDirectoryInode < 0)
		{
			errorMsg("Change directory error: directory does not exist.\n");
			return -1;
		}

		currentDirectoryInode = changeToDirectoryInode;
		if (inode[changeToDirectoryInode].type == directory)
		{
			int changeToDirectoryCurDirBlock = inode[changeToDirectoryInode].directBlock[0];
			int changeFromDirectoryCurDirBlock = inode[search_cur_dir(".")].directBlock[0];
			disk_write(changeFromDirectoryCurDirBlock, (char * ) & curDir);
			curDirBlock = changeToDirectoryCurDirBlock;
			gettimeofday( & (inode[changeToDirectoryInode].lastAccess), NULL);
			disk_read(changeToDirectoryCurDirBlock, (char * ) & curDir);
		}
		else
		{
			errorMsg("Change directory error: Type is file, not directory\n");
			return -1;
		}
	}
	return 0;
}

/**
 * ls(): list a directory's contents
 * @param arg1: if arg passed is "-i" the inodes are also listed.
 * @author Raj Derasari, added it on 11/11/2016 and documented on 21/11/2016 17:21
**/
int ls(char* arg1,char* arg2)
{
	int i;
	int not_in_current = 0;

	if(strcmp(arg1,"") == 0 && strcmp(arg2,"")==0)
	{
		printf("name \t\ttype\t\tsize(bytes)\n");
	}
	else if(strcmp(arg1,"-i")==0)
	{
		if(strcmp(arg2,"") > 0)
		{
			if(search_cur_dir(arg2) < 0)
			{
				printf("%s: directory does not exist\n",arg2);
				return 0;
			}
			else
			{
				not_in_current = 1;
				changedir(arg2);	// now in arg1 wala folder
			}
		}
		printf("name \t\ttype\t\tinode\tsize(bytes)\n");
	}
	else if(strcmp(arg2,"") == 0)
	{
		if(search_cur_dir(arg1) < 0)
		{
			printf("%s: directory does not exist\n",arg1);
			return 0;
		}
		else
		{
			not_in_current = 1;
			changedir(arg1);	// now in arg1 wala folder
		}
		printf("name \t\ttype\t\tsize(bytes)\n");
	}
	else if(strcmp(arg2,"") !=0)
	{
		printf("Error: Too many arguments to function ls\n Usage: ls | ls <-i> | ls <-i> <dirname> | ls <dirname>");
		return 0;
	}

	for (i = 0; i < MAX_DIR_ENTRY; i++)
	{
		int n = curDir.dentry[i].inode;
		if ((inode[n].size != 1) || (strcmp(curDir.dentry[i].name, "") != 0))
		{
			printf("%-16s", curDir.dentry[i].name);
			if (inode[n].type == file) printf("file\t\t");
			else if(inode[n].type == link) printf("link\t\t");
			else printf("dir	  \t");
			if(strcmp(arg1,"-i")==0)
				printf("%3d \t", curDir.dentry[i].inode);
			printf("%4d \n", inode[n].size);
		}
	}

	if(not_in_current == 1)
		changedir("..");		// go to parent
	return 0;
}

/**
 * df(): list filesystem stats
 * @param arg1: if arg passed is "-i" the inodes are also listed.
 * @author Raj Derasari, added it on 11/11/2016 and documented on 21/11/2016 17:31
**/
int df()
{
	printf("File System Status: \n");
	printf("# of free blocks: %d (%d bytes)\n# of free inodes: %d\n", superBlock.freeBlockCount, superBlock.freeBlockCount * BLOCK_SIZE, superBlock.freeInodeCount);
	return 0;
}

/**
 * cp(): copy contents of file1 into file2
 * @param arg1: if arg passed is "-i" the inodes are also listed.
 * @author Harsh Dalal, added it on 10/12/2016 and documented on 10/12/2016
**/
int cp(char* f1, char* f2)
{
	int inodeNum;
	int inodeNum2;
	if(strcmp(f1,"") == 0 || strcmp(f2,"") == 0)
	{
		errorMsg("Usage: cp <source name> <destination name>\n");
		return -1;
	}
	inodeNum = search_cur_dir(f1);		//search for file
	inodeNum2 = search_cur_dir(f2);		//search for file
	if(inodeNum < 0 || inodeNum2 >0)
	{
		errorMsg("File copy error: source not found or destination already exists\n");
		return -1;
	}
	else
	{
		if(inode[inodeNum].type != file)
		{
			errorMsg("Source file is a link/directory, not supported yet!\n");
			return -1;
		}
		if(inodeNum2 < 0)
		{
			char temp[MAX_FILE_SIZE];
			char file_1_contents[MAX_FILE_SIZE];
			int i = 0;
			int blockNum = 0;
		
			blockNum = inode[inodeNum].blockCount;			// get blocks of file
			for (i = 0; i < blockNum; i++)
			{
				disk_read(inode[inodeNum].directBlock[i], file_1_contents);				//read the data
				strcat(temp, file_1_contents);
			}
			gettimeofday( & (inode[inodeNum].lastAccess), NULL);

			create(f2,0);			//create an empty file
			gettimeofday( & (inode[inodeNum2].created), NULL);		//set created time
			
			// now write to f2 using file_modify
			printf("Contents of file %s : ",f2);
			modify_file(f2, 0 , temp);
			
			gettimeofday( & (inode[inodeNum2].lastAccess), NULL);
		}
	}
	return 0;
}

/**
 * help(): outputs a list of commands and text
 * @return 0, dummy value
 * @author Raj Derasari, added it on 13/11/2016 and documented on 21/11/2016 17:35
**/
int help()
{
	printf("\n************************\nHELP(): List of commands\n************************\n");
	printf("Available Commands: \n");
	printf("\n************************\nFile functions\n************************\n");
	printf("create <filename> <size>: create a file of name 'filename' and 'size' bytes \n");
	printf("cat <filename>: view the contents of the file 'filename'\n");
	printf("read <filename> <offset> <size>: read 'size' characters from 'filename', starting from 'offset'\n");
	printf("write <filename> <offset> <string>: write 'string' characters to 'filename' starting from 'offset'\n");
	printf("cp <source> <destination>: Copy contents of 'source' file to 'destination' file \n");
	printf("rm <filename>: remove a file\n");
	printf("stat <filename>: view statistics of the file 'filename'\n");
	printf("\n************************\nDirectory functions\n************************\n");
	printf("mkdir <dirname>: create a directory named 'dirname'\n");
	printf("rmdir <dirname>: remove an empty directory\n");
	printf("cd <dirname>: change the working directory to dirname\n");
	printf("ls <-i for inodes> <dirname to list>: list the contents in the working directory OR in <dirname>\n");
	printf("df: access disk usage: view the occupied and unoccupied size\n");
	printf("\n************************\nLink functions\n************************\n");
	printf("ln <filename> <LINK_name>: create a link of name 'LINK_name' pointing to INODE of filename \n\n");
	printf("Note: Using arrow keys to take input from previous/next input is not supported, if running in Linux!\n\n");
	return 0;
}

/**
 * execute_command(): execute the valid commands and log
 * @author Raj Derasari, added it on 11/11/2016 and documented on 21/11/2016 17:31
**/
int execute_command(char * comm, char * arg1, char * arg2, char * arg3, char * arg4, int numArg)
{
	time(&currTime);
	loggingFile = fopen("logfile.txt","ab+");

	if(loggingFile==NULL) errorMsg("error opening logfile\n");

	if (compare(comm, "help"))
		return help();
	else if (compare(comm, "create"))
	{
		if (numArg < 2)
		{
			errorMsg("Error: create <filename> <size>\n");
			return -1;
		}

		generate_log("There was an attempt to create a file ->",arg1,arg2,NULL,NULL);

		return create(arg1, atoi(arg2));
	}
	else if (compare(comm, "cat"))
	{
		if (numArg < 1)
		{
			errorMsg("Error: cat <filename>\n");
			return -1;
		}

		generate_log("There was an attempt to access file ->",arg1,NULL,NULL,NULL);

		return cat(arg1);
	}
	else if (compare(comm, "write"))
	{
		if (numArg < 3)
		{
			errorMsg("Error: write <filename> <offset> <buf>\n");
			return -1;
		}

		generate_log("There was an attempt to write to a file named -> ",arg1,arg2,arg3,NULL);

		return modify_file(arg1, atoi(arg2), arg3);
	}
	else if (compare(comm, "read"))
	{
		if (numArg < 3)
		{
			errorMsg("Error: read <filename> <offset> <size>\n");
			return -1;
		}

		generate_log("There was an attempt to read file ->",arg1,NULL,NULL,NULL);

		return file_read(arg1, atoi(arg2), atoi(arg3));
	}
	else if (compare(comm, "rm"))
	{
		if (numArg < 1)
		{
			errorMsg("Error: rm <filename>\n");
			return -1;
		}

		generate_log("There was an attempt to remove file->",arg1,NULL,NULL,NULL);

		return rm(arg1);
	}
	else if (compare(comm, "mkdir"))
	{
		if (numArg < 1)
		{
			errorMsg("Error: mkdir <dirname>\n");
			return -1;
		}

		generate_log("There was an attempt to make a directory ->",arg1,NULL,NULL,NULL);

		return makedirectory(arg1);
	}
	else if (compare(comm, "rmdir"))
	{
		if (numArg < 1)
		{
			errorMsg("Error: rmdir <dirname>\n");
			return -1;
		}

		generate_log("There was an attempt to remove directory->",arg1,NULL,NULL,NULL);

		return removedirectory(arg1);
	}
	else if (compare(comm, "cd"))
	{
		if (numArg < 1)
		{
			errorMsg("Error: cd <dirname>\n");
			return -1;
		}

		generate_log("There was an attempt to change directory to ->",arg1,NULL,NULL,NULL);

		return changedir(arg1);
	}
	else if (compare(comm, "ls"))
		return ls(arg1,arg2);

	else if (compare(comm, "stat"))
	{
		if (numArg < 1)
		{
			errorMsg("Error: stat <filename>\n");
			return -1;
		}

		generate_log("There was an attempt to access statistics of file ->",arg1,NULL,NULL,NULL);

		return stat(arg1);
	}
	else if (compare(comm, "df"))
	{
		generate_log("There was an attempt to access disk usage utility",NULL,NULL,NULL,NULL);

		return df();
	}
	else if (compare(comm, "ln"))
	{
		generate_log("There was an attempt to LINK a file from source to LINK.",arg1,arg2,NULL,NULL);
		
		return ln(arg1,arg2);
	}
	else if (compare(comm, "cp"))
	{
		generate_log("There was an attempt to copy a file from source to dest.",arg1,arg2,NULL,NULL);
		
		return cp(arg1,arg2);
	}
	else
	{
		errorMsg("command not found. Try \"help\" for a list of supported commands\n");
		
		return -1;
	}
	return 0;
}
