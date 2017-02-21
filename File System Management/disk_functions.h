/**
 * Disk_functions.H
 * Authors: Harsh Dalal, Dipen Kanjiya
 * Version: 1.2, edited on 11/11/2016, Documentation added 13/11/2016
**/

#include <stdbool.h>			// for boolean variables
#include <pthread.h>
// Define the maximum number of blocks (4K bytes) and maximum block size (512 bytes)
#define BLOCK_SIZE 4096
#define MAX_BLOCK 4096

// "disk" acts as the storage matrix (like a virtual disk)
// extern because it will be shared across all files
extern char disk[MAX_BLOCK][BLOCK_SIZE];
pthread_mutex_t mutex;					// use this to get write lock

// These are the methods in disk_functions.c being instantiated
int disk_read( int block, char * buf );
int disk_write( int block, char * buf );
int disk_mount( char * name );
int disk_unmount( char * name );
void errorMsg(const char* str);
bool compare(char * comm, char * comm2);
