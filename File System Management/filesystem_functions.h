/**
 * Filesystem_functions.H
 * Authors: Raj Derasari, Harsh Dalal
 * Version: 1.2.5, last edited 7/12/2016, Documentation added 21/11/2016
**/

#include <sys/time.h>			// for time oprations
#include "disk_functions.h"		// for disk functions

#include <pthread.h>
#include <semaphore.h>
#include <stdbool.h>

#define MAX_BLOCK 4096			// define maximum number of blocks, 4K
#define MAX_INODE 512			// maximum number of inodes
#define MAX_FILE_SIZE 10240		// 20 blocks of 0.5 k each
#define MAX_FILE_NAME 16		// file name maximum is 16 characters
#define MAX_DIR_ENTRY 25		// calculted by formula

typedef enum {file, directory, link} TYPE;

typedef struct {					// super Block data structure
	int freeBlockCount;				// available free blocks
	int freeInodeCount;				// available inodes
	char padding[504];				// padding string
} SuperBlock;

typedef struct {					//iNode Information, variables are self explanatory
	TYPE type;						// TYPE of inode
	struct timeval lastAccess;
	struct timeval created;
	int owner;
	int group;
	int size;
	int blockCount;					// number of blocks occupied by the file
//	int indirectBlock;				// not yet implemented, we can work on it in order to support bigger files
	int directBlock[10];			// direct block pointers for file handlers
	char padding[24];
} Inode; 							// size of each inode is 128 bytes

typedef struct{							// for each file in a directory
	int inode;							// allocated inode for each directory entry (may be a file or directory)
	char name[MAX_FILE_NAME];			// name of file, max size 255 bytes
} DirectoryEntry;

typedef struct								// for each directory entry (file, OR another directory)
{
	DirectoryEntry dentry[MAX_DIR_ENTRY];	// store directory entry structures
	int numEntry;							// #entry inside the file
	char padding[8];						// padding flags
} Dentry;

// filesystem variables
extern char inodeMap[MAX_INODE / 8];		// divide by 8 because we store everything as 1 byte - based
extern char blockMap[MAX_BLOCK / 8];		// divide by 8 because we store everything as 1 byte - based
extern SuperBlock superBlock;

// our project logging variables
extern int logCounter;						// primary key for identifying the functions in log analysis
extern FILE* loggingFile;					// file pointer for logging file, shared between the programs
extern time_t currTime;						// time pointer for looging file, shared between the programs
extern struct tm* logTime;					// time struct* for logging file, shared between the programs

extern bool threadStat;						//status of the thread (continue or cancel)
extern sem_t semaphore_logging;
extern sem_t semaphore_filesystem;
pthread_mutex_t mutexer;					// use this to get write lock for missed caches

// These are the methods in filesystem_functions.c being instantiated
void generate_log(char* message,char* arg1,char *arg2,char* arg3,char* arg4);
void *autosave_log(void *vargp);
int fs_mount(char * name);
int fs_unmount(char * name);
int search_cur_dir(char * name);
int create(char * name, int size);
int ln(char* arg1, char* arg2);
int cp(char* f1,char* f2);
int cat(char *name);
int file_read(char * name, int offset, int size);
int modify_file(char * name, int offset, char * buf);
int rm(char * name);
int stat(char * name);
int makedirectory(char * name);
int removedirectory(char * name);
int changedir(char * name);
int ls(char* arg1,char* arg2);
int df();
int help();
int execute_command(char * comm,char * arg1,char * arg2,char * arg3,char * arg4,int numArg);