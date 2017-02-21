/**
 * Disk_functions.C
 * Authors: Harsh Dalal, Dipen Kanjiya
 * Version: 1.2, edited on 11/11/2016, Documentation added 13/11/2016
**/

#include <stdio.h>				// standard operations
#include <string.h>				// string manipulation and functions
#include <stdbool.h>			// for boolean variables
#include "disk_functions.h"		// disk header file

/**
 * command(): Verify a command before it is executed:
 * @param char*comm string of 1st command
 * @param char*comm2 string of 2nd command
 * @return null
 * @author Raj Derasari, added it on 11/11/2016 and documented on 17/11/2016
**/
bool compare(char * comm, char * comm2)
{
	// if comm and comm2 are equal in LENGTH and CONTENTS
	if( strlen( comm ) == strlen( comm2 ) && strncmp( comm, comm2, strlen( comm )) == 0 )
		return true;		// and hence allow for its execution
	return false;
}


/**
 * Print error and exit
**/
void errorMsg(const char* str)
{
	fprintf( stderr, str);			// print error to console/terminal
}

char disk[MAX_BLOCK][BLOCK_SIZE];		// 2D array that acts as temporary memory space

/**
 * disk_read() this function reads from disk
 * reading and writing to files is done best, without multithreading OR semaphores, because OS manages locking
 * @param int block: block number to read from
 * @param char* buf: the output location
 * @return return 0 if succesffuly reading from disk, else return -1
 * @author Ravi Patel, added at 12/11/2016 22:23
**/
int disk_read( int block, char * buf )
{
	pthread_mutex_lock(&mutex);						// create a lock <- this causes problems if two clients conn to server on MISS webpage (NOT HIT) at the SAME TIME
	if( block < 0 || block >= MAX_BLOCK )		//prevent errors
		{ errorMsg("error while reading the disk \n" ); return -1;}

	memcpy( buf, disk[block], BLOCK_SIZE );		// copy from disk to output buffer

	pthread_mutex_unlock(&mutex);		// unlock mutex
	return 0;
}

/**
 * disk_write() this function writes to disk matrix
 * reading and writing to files is done best, without multithreading OR semaphores, because OS manages locking
 * @param int block: block number to write to
 * @param char* buf: the input location, to write to file
 * @return return 0 if succesffuly written to disk, else return -1 if writing error
 * @author Ravi Patel, added at 12/11/2016 22:23
**/
int disk_write( int block, char * buf)
{		
	// checking for possible memory pointing error
	if( block < 0 || block >= MAX_BLOCK )
		{ errorMsg("error while writing to the disk\n"); return -1;}

	memcpy( disk[block], buf, BLOCK_SIZE );		// MOVE from buffer to disk
	return 0;
}

/**
 * disk_mount() this function mounts to disk[][] from file *name
 * mount a disk (filename) and store to disk[][] matrix
 * @param char* name: the name is passed as command line argument to main() function and this function is called
 * @return return 0 if succesffuly mounted, else return -1 on an error
 * @author Ravi Patel, added at 12/11/2016 22:27
**/
int disk_mount( char * name )
{
	FILE *fp = fopen( name, "r" );								// opening file for reading
	
	if(fp != NULL)
	{
		fread( disk, BLOCK_SIZE, MAX_BLOCK, fp );					//read files data
		fclose( fp );												//close
		return 1;
	}
	return -1;
}

/**
 * disk_unmount() this function unmounts disk[][] and saves file *name
 * mount a disk (filename) and store to disk[][] matrix
 * @param char* name: the name is passed as command line argument to main() function and this function is called
 * @return return 0 if succesffuly mounted, else return -1 on an error
 * @author Ravi Patel, added at 12/11/2016 22:31
**/
int disk_unmount( char * name )
{
	FILE * fp = fopen( name, "w" );
	if( fp != NULL )
	{
		fwrite( disk, BLOCK_SIZE, MAX_BLOCK, fp );	// writes BLOCK_SIZE*MAX_BLOCK bytes of disk[][] to *fp
		fclose( fp );								// closing and hence, save the file
		return 1;
	}
        return -1;
}
