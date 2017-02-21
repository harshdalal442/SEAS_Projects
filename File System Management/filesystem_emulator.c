/**
TODO : multi thread anywhere?																	:2 log threads:
TODO : soft links, how  																		:DONE:
TODO : improve logging?
**/

/**
 * Filesystem_emulator.C
 * Authors: Raj Derasari
 * Version: 1.2, last edited 17/11/2016, Documentation added 17/11/2016.
**/

#include <stdio.h>				// standard i/o
#include <string.h>				// for string functions
#include <stdlib.h>				// for calling exit
#include <time.h>				// for time functions
#include <stdbool.h>			// work with bool() so...
#include <signal.h>			// handling signals
#include <pthread.h>			// creating the thread to autolog file

#include "filesystem_functions.h"		// for FS functions and command executing
#include "disk_functions.h"				// for disk mounting, unmounting, etc.

char fileName[256]= {};			// 256 limit of filename in LINUX (our FS has 16 char limit)

char *command_list[10];

pthread_t newThread;			// this thread will manage autolog file
sem_t semaphore_logging;
sem_t semaphore_filesystem;
/**
 * sigintHandler(): Signal Handler
 * @param sig_num = 9 for Ctrl+C
 * @return null
 * @author Raj Derasari, added it on 11/11/2016 and documented on 17/11/2016
**/
void sigintHandler(int sig_num)
{
	// http://en.cppreference.com/w/c/program/signal  for signal handling reference.
	signal(SIGINT, sigintHandler);
	printf("./fs_sim was killed with exit status -1 \n");
	fs_unmount(fileName);			// unmount the filesystem, save everything
	generate_log("filesystem was force closed: ",NULL,NULL,NULL,NULL); //save to log, args[] are empty
	pthread_detach(newThread);
	fflush(loggingFile);
	fclose(loggingFile);
	sem_destroy(&semaphore_logging);
	sem_destroy(&semaphore_filesystem);
	fflush(stdout);					// use fflush(stdout) before exiting an interrupt call
	exit(-1);
}

// Main function, no documentation required yeay!
int main(int argc, char ** argv)
{
	//define/initalize binary semaphore
	if ( sem_init(&semaphore_logging, 0, 0) != 0)
	{
		perror("Semaphore initialization failed");
		exit(EXIT_FAILURE);
	}
	if ( sem_init(&semaphore_filesystem, 0, 0) != 0)
	{
		perror("Semaphore initialization failed");
		exit(EXIT_FAILURE);
	}
	//init MUTEX
	pthread_mutex_init(&mutex, NULL);  // LOCK for multiple user access

	//signal handler
	signal(SIGINT, sigintHandler);					//initialize ctrl+c interrupt handler

	//logging file
	loggingFile = fopen( "logfile.txt", "ab+" );	//open logfile for saving to

	// exception handling
	if( loggingFile == NULL )
	{
		errorMsg("error: failed to open 'logfile.txt'.... and so I am exiting\n");
		return -1;
	}
	if( argc < 2 )
	{
		errorMsg("usage: ./fs disk_name\n");
		return -1;
	}

	fprintf(loggingFile,"Filesystem opened: %s \n",argv[1]);


	char comm[64];
	char arg1[16];
	char arg2[16];
	char arg3[16];
	char arg4[MAX_FILE_SIZE];
	char input[64 + 16 + 16 + 16 + MAX_FILE_SIZE];

	srand( time( NULL ));
	time(&currTime);		//get current time

	char *x=strcpy(fileName,argv[1]);		// save the filename (passed as argv[1]) for signal handling
	srand( time( NULL ));			// i dont know why but this HAS to be called twice for logging to work

	fs_mount( argv[1] );			// mount the file

	printf(">");					// prompt for input
	
	//create a thread for logging.
	if (pthread_create(&newThread, NULL, autosave_log, NULL) != 0)
	{
		printf("Failed to create a thread necessary for auto-logging. Exiting\n");
		exit(1);
	}

	//The main while loop that will keep the simulator running until exit is entered
	while( fgets( input, ( MAX_FILE_NAME + MAX_FILE_SIZE ), stdin ))
	{
		// fill these locations with zeros
		bzero( comm, 64 );
		bzero( arg1, 16 );
		bzero( arg2, 16 );
		bzero( arg3, 16 );
		bzero( arg4, MAX_FILE_SIZE );

		int numArg = sscanf( input, "%s %s %s %s %s", comm, arg1, arg2, arg3, arg4 );		// to change the format of displaying

		// if exit sentered then quit.
		if(compare( comm, "exit" ))
			break;
		else		// see filesystem_functions.C
			execute_command(comm, arg1, arg2, arg3, arg4, numArg - 1);

		// at this point, the log has been written to, and saved. Now the next command can be input.
		printf(">");
	}

	printf("Closing thread with ID %d before exiting.\n\n", pthread_self());
	pthread_detach(newThread);
	generate_log("filesystem succesfully closed: ",argv[1],NULL,NULL,NULL);

	fclose(loggingFile);		// close the file as it is repored by threads
	fs_unmount(argv[1]);
	pthread_mutex_destroy(&mutex);				// remove lock
	sem_destroy(&semaphore_logging);
	sem_destroy(&semaphore_filesystem);
	exit(EXIT_SUCCESS);
}
