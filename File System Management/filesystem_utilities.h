/**
 * Filesystem_utilities.H
 * Authors: Raj Derasari
 * Version: 1.0, last edited 11/11/2016, Documentation added 17/11/2016.
**/

// These are the methods in filesystem_utilities.c being instantiated
int get_free_inode();												// return free inode to store file to
int get_free_block();												// return free block to store file to
int generate_string( char * str, size_t size );						// generate a random string
int format_timeval( struct timeval * tv, char * buf, size_t sz );	// formating the time input
void set_bit( char * array, int index, char value );				// set the bit in an array