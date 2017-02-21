/**
 * Filesystem_utilites.C
 * Authors: Dipen Kanjiya, Raj Derasari, Harsh Dalal, Ravi Patel
 * Version: 1.1.5
**/
#include <stdio.h>		// standard operations
#include <stdlib.h>		// for rand() and such functions
#include <time.h>		// for time operations

#include "filesystem_functions.h"	// for file structures

/**
 * generate_string generates a random string to create a file of "size" bytes
 * a random string is generated from a character set as in charset[] array below
 * @param char* str: pointer to string base address
 * @param size_t size: the size in bytes, of desired filesize
 * @return 0 if input size is less than 1, else returns (size+1)
 * @author Raj Derasari, added at 17/11/2016 18:27
**/
int generate_string( char * str, size_t size)
{
    if(size < 1) return 0;			// invalid size argument, 0 error code will fail to create file

    int n, key;						// key for creating a random function
    
    const char charset[] = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$()";
    
    for (n = 0; n < size; n++)		// for these many bytes, we generate random characters
    {
        key = rand() % (int) (sizeof charset - 1);
        str[n] = charset[key];		// and add the random character to the string pointer
    }
    str[size] = '\0';				// last character of the file should be NULL
    
    return size + 1;
}

/**
 * set_bit sets the bit in a string "array" at index passed in parameter, with values passed in parameter
 * @param char* array: pointer to string base address
 * @param int index: index at whicch the value is to be set
 * @return void
 * @author Raj Derasari, added at 17/11/2016 18:27
**/
void set_bit( char * array, int index, char value )
{
	if( value != 0 && value != 1 )
        return;
    
    array[index/8] ^= 1 << ( index % 8 );		// try toggling
    
    if( (1 & ( array[index/8] >> ( index % 8 )))==value)		// if matches, return
	    return;

	array[index/8] ^= 1 << ( index % 8 );
}

/**
 * get_free_inode(): This function will return the next inode value
 * @return -1 if no free inodes in the directory are available
 * @author Raj Derasari, added at 17/11/2016 18:34
**/
int get_free_inode()
{
    int i = 0;
    
    for( i = 0; i < MAX_INODE; i++ )		// linear search for inode 
    {
		// if free inode is found
       if( (1 & ( inodeMap[i/8] >> ( i % 8 )))==0)
        {   
            set_bit( inodeMap, i, 1 );	// set it as used and it will be used to write the file
			superBlock.freeInodeCount--;	// decrease the the no. of free block count, maintain inventory
			return i;					// return the position of the inode where file will be written
        }
    }
    return -1;
}

/**
 * get_free_block(): this function returns the free blocks 
 * @return "free block number" if available, or return -1, if no free blocks are available
 * @author Raj Derasari, added at 17/11/2016 21:31
**/
int get_free_block()
{
    int i = 0;
    
   for( i = 0; i < MAX_BLOCK; i++ )
    {
        if( (1 & ( blockMap[i/8] >> ( i % 8 ))) == 0)
		{
            set_bit( blockMap, i, 1 );
            superBlock.freeBlockCount--;
            
            return i;
        }
    }
    return -1;
}

/**
 * format_timeval(): this function returns the free blocks 
 * @param tv: struct timeval type, pass pointer to struct here
 * @param buf: string, is a pointer to base address of output string
 * @return "timestamp" integer, or -1 on failure
 * @author Raj Derasari, added at 17/11/2016 21:32
**/
int format_timeval( struct timeval * tv, char * buf, size_t sz )
{
    struct tm * gm;						//gmtime
    ssize_t written = -1;				// size that can be written within single operation
    gm = gmtime( &tv -> tv_sec );		// gmtime is used to fill the tm structures
    
    if( gm )
    {   
		// HERE buf=destination, sz=size of formatted time and gm = calender, broken into Y/M/D H/M/S
		written = ( ssize_t )strftime( buf, sz, "%Y-%m-%d %H:%M:%S", gm ); 		
        
        if(( written > 0 ) && (( size_t )written < sz ))
        {
			int w = snprintf( buf + written, sz - ( size_t )written, ".%06dZ", tv -> tv_usec );
			//sends the formatted output to str at first
			written = (w > 0) ? written + w : -1;	// write the final time to the variable
        }
    }  
    return written;
}
