// TODO: Add time calculation
// TODO: add file stream stuff from update_here main CPP

/**
 * Computer Networks Project
 * Web proxy and caching server
 * Made by:
 * 			Jay Joshi (1401005)
 * 			Nirav Akbari (1401008)
 * 			Harsh Dalal (1401022)
 * 			Raj Derasari (1401029)
 * 			Ravi Patel (1401058)
 * Implementation:  server listens for connections from clients
 * 					and receives data from the web servers
 * 					this data is cached into RAM of server
 * 					and forwarded to clients on cache hit
 * 					in case of a cache miss, the server re-receives all data
 *					data is preserved and made persistent by writing to "cacheDir" directory
 *					however, packet data of last visited site is stored in a file called "sendfile".txt
 *					Implementation of cache: by an unordered set, see cache.h
 *					On cache hits and misses, we display time difference from sent to received
**/ 

#include "cache.h"
#include <stdio.h>
#include <string>
#include <cstring>
#include <stdlib.h>
#include <time.h>
#include <sstream>
#include <fstream>					// this will be used to write website packet data to "sendfile.txt"

#define MAX_BACK_LOG (5)			// the queue size for (listenfd, backlog);

using namespace std;					// namespace
pthread_mutex_t mutex;					// use this to get write lock for missed caches
struct timespec ts_start={0,0};
struct timespec ts_end={0,0};
char time_diff_buffer[100];

static int indexfor = 1;
// argv[1] is the port number input
long CacheSize;						// store the size of cache (based on command line argument argv[2])
long CacheAvailable;				// store difference of cache (based on command line argument argv[2])

static string fileName = "GaTQsG";
/**
 * Return the minimum from 'a' and 'b' input parameters
**/
int min(int a,int b)
{
	return( (a>b) ? b : a);			// return the lower of two values
}


/**
 * parse address: convert a URL, host, file dsecriptor, server port number
 * all fof which are obtained through (void webtalk()) and process these variables

**/ 
void parseAddress(char* url, char* host, char** file, int* serverPort)
{
	char *addr;											// point to a string for using soon
	char *substr;		// substring store

	if(strstr(url, "http://"))							// if the first 7 characters ([0] - [6]) are HTTP
		url = &(url[7]);								// extract data after HTTP://

	*file = strchr(url, '/');							//	get other data intro the poointer
	strcpy(host, url);

	strtok_r(host, "/", &substr);						// returns pointer to host, and later it will be tokenized

	addr = strchr(host, ':');							// check if we have a colon
	if(!addr)
	{
		*serverPort = 80; 								// or should it be 443?
		return;
	}
	strtok_r(host, ":", &substr);						// if a colon is found, extract the host
	*serverPort = atoi(strtok_r(NULL, "/",&substr));	//extract string after the "/"
}

/**
 * connect to a server -> string of request, hostname, server port number parameters
**/
int conn_server(const char * http_request,char * hostname, int serverPort)
{
	int sock;													//socketid
	struct sockaddr_in server_addr;								// server address line
	
	struct hostent *hp;
	// Socket programming: store some host - client variables
	
	// create a socket
	if ((sock=socket(AF_INET, SOCK_STREAM/* use tcp*/, 0))<0)
	{
		perror("Create socket error:"); //return 0;				//display error if an error in creating socket
	}

	// Fill in the server's IP address and port
	if ((hp = gethostbyname(hostname)) == NULL)					//gethostbyname as we used in lab
	{
		perror("gethostbyname error"); 							// check h_errno for cause of error
		return -2;
	}
	bzero((char *) &server_addr, sizeof(server_addr));

	server_addr.sin_family = AF_INET;
	bcopy((char *)hp->h_addr,(char *)&server_addr.sin_addr.s_addr, hp->h_length);
	server_addr.sin_port = htons(serverPort);

	// Establish a connection with the server
	if (connect(sock, (struct sockaddr *) &server_addr, sizeof(server_addr)) < 0)
	{
		perror("Connect error");
		return -1;
	}
	return sock;
	
	// At this point, socket has been created, and connected to, return sockfd <- socket descriptor
}

/**
 * void webtalk:  input is socket description pointer
 * 
**/
void *webtalk(void * socket_desc)
{
	pthread_mutex_lock(&mutex);						// create a lock <- this causes problems if two clients conn to server on MISS webpage (NOT HIT) at the SAME TIME

	int new_s= *(int *)socket_desc;
	int serverPort=80;								// store portNO = 80 for HTTP
	
	char buf[MAX_MSG_LENGTH];						// receiver buffer (receives from HTTP web servers)
	char host[MAX_MSG_LENGTH];						// store host string
	
	char *url=NULL,*cmd=NULL, *version=NULL, *file=NULL, *brkt=NULL;	// pointers, init to NULL
	char *token = NULL;
	
	ssize_t bytes_read;				// stores bytes read from connection

	token=" \r\n";					// carriage return and line feed

//	time(&start_time);
	clock_gettime(CLOCK_MONOTONIC, &ts_start);

	if ( (bytes_read = read (new_s,buf,MAX_MSG_LENGTH) ) >0)		// if receiving successful into "buf"
	{
		buf[bytes_read]='\0';										// store last index of buf as '0'

		bool keep_alive=false; 	// if buf contains the string "keep-alive" , we set keep_alive as true
		char *p=strstr(buf, "Connection: keep-alive\r\n");	// p is either NULL (no keepalive) or STRING (keep-alive)

		if(p!=NULL)				// keep alive is set as true if the above was met
			keep_alive=true;

		// now perform these operations to extract data from token
		char *nbuf=strdup(buf);
		cmd=strtok_r(nbuf, token, &brkt);
		url=strtok_r(NULL, token, &brkt);
		version = strtok_r(NULL, token, &brkt);		// get version
		parseAddress(url,host,&file, &serverPort);
	}
	
	char reply[MAX_MSG_LENGTH+1];
	
	if (cmd !=NULL && strcmp(cmd, "GET")==0)
	{
		if (response_from_cache(new_s,url))
		{
			
			//time(&end_time);
//			timespec_get(&ts_end, TIME_UTC);
			//clock_gettime(CLOCK_MONOTONIC, &ts_end);

			//strftime(time_diff_buffer, sizeof time_diff_buffer, "%T", gmtime(&ts_end.tv_sec));
			//cout << "Transmission time: milliseconds: " << ((ts_end.tv_nsec)/1000000) << endl;
			//%s.%09ld UTC\n", buff, ts.tv_nsec;
			//time_difference = difftime(end_time, start_time);
			//time_diff_printer = *localtime()
			
			//cout << "Send Time for Hit: " << time_difference << endl;	
		}
		else
		{
			// At this point, cache is MISSED and we have to save the cache here
			//string y = "cacheDir/";
			//char *x;
			//rand_string(x,9);
			//string Fname = y+x+".txt";
			
			//ofstream cachefile;
			//cachefile.open(Fname.c_str());
			string main="cacheDir/";
			stringstream ss;
			ss << rand()%1000;
			string random = ss.str();
			random += fileName;
			ofstream cache_of;
			main+=random;
		//	char *x;
		//	rand_string(x,9);
		//	string x = random+fileName+".txt";
			
			cache_of.open(main.c_str());



			
			
			CacheEntry this_entry;					//start cahce responding
			this_entry.p_url=strdup(url);	
			cache_of << this_entry.p_url << endl;
			
			// remove comment below, to PRINT what url is visited , in server console
			//cout << endl << "encountered cache miss on: "<< url;
			int sock=conn_server(buf, host,serverPort);	// connect to the server
			ssize_t recv_len = 0;

			//int sent_bytes;								// send request
			if ((send(sock, buf, MAX_MSG_LENGTH, 0)) < 0)
			{
				perror("Send error:");
			}
			
			//fill buffer with zeros
			
			bzero(reply, sizeof(reply));
			
			// use this ofstream
			ofstream sendfile;
			sendfile.open("sendfile.txt");
			sendfile<<url<<endl;
			int receiv_buffer_size=0;
			
			while((recv_len = read(sock, reply,MAX_MSG_LENGTH))>0)		//read from server
			{
				reply[recv_len]=0;
				if (this_entry.response_body)
				{
					this_entry.response_body=(char*)realloc(this_entry.response_body, (receiv_buffer_size+recv_len+1)*sizeof(*this_entry.response_body));
				}
				else
					this_entry.response_body=(char*)malloc((recv_len+1)*sizeof(*this_entry.response_body));

				cache_of << this_entry.response_body << endl;
				bcopy(reply, this_entry.response_body+receiv_buffer_size, recv_len*sizeof(*this_entry.response_body));
				receiv_buffer_size+=recv_len;
				size_t nleft = recv_len;
				ssize_t nwritten;
				char *bufp = reply;

				while (nleft > 0)
				{
					if ((nwritten = send(new_s, bufp, nleft,0)) <= 0)
					{
						if (errno == EINTR)				 // interrupted by sig handler return
							nwritten = 0;				 // and call write() again
						else
							break;
					}
					sendfile<<bufp;
					nleft -= nwritten;
					bufp += nwritten;
				}

				this_entry.buffersize=receiv_buffer_size;
				memset(reply, 0, MAX_MSG_LENGTH+1);

			}
			cache_of.close();
			sendfile<<endl;
			sendfile.close();				//close file
			close(sock);					//Close server socket
			cout<<"Whole response received"<<endl;
			clock_gettime(CLOCK_MONOTONIC, &ts_end);

			strftime(time_diff_buffer, sizeof time_diff_buffer, "%T", gmtime(&ts_end.tv_sec));
//cout << "Cache miss -> " << ((ts_end.tv_nsec)/1000000) << " ms" << endl;
		
			//time(&end_time);
			//time_difference = difftime(end_time, start_time);
			//time_diff_printer = *localtime()
			
			//cout << "Send Time for Miss: " << time_difference;
			cache_response(this_entry);		//Add entry to cache
		}
	}	
	close(new_s);		//close browser socket
	free(socket_desc);		// remove the memory
	pthread_mutex_unlock(&mutex);		// unlock mutex
	return NULL;
}

/**
  * Reponse of cache: Insert to cache
  * If cache misses it does not get executed
  * if cache HITS, it will find thecache entry from cache list and restore
**/
void cache_response(CacheEntry entry)
{
	long entrysize=entry.buffersize+strlen(entry.p_url);			// get entry size
	
	cout << "Cache Miss url : " << entry.p_url << endl;
	
	if (entrysize<CacheSize)				// if 
	{
		while (CacheAvailable < entrysize)
		{
			free(myCache.front().response_body);				// remove from cache
			CacheAvailable+=myCache.front().buffersize;			// increase available size
			myCache.pop_front();								// pop from front
		}
		myCache.push_back(entry);			// push back value
		CacheAvailable-=(myCache.back().buffersize+strlen(myCache.back().p_url));
	}
	else
		cout<<"Entry size is greater than the whole Cache Size"<<endl;
}

/**
 * responding from a HIT on cache: we manage queue by LRU algorithm
 * if a url IS found in cache this function is called.
 * use dequeing and iteration to manage cache
**/ 
bool response_from_cache(int browserfd, char *url)
{
	clock_gettime(CLOCK_MONOTONIC, &ts_start);

	// run the iterator to manage queuing
	for (deque<CacheEntry>::iterator it=myCache.begin(); it!=myCache.end(); ++it)
	{
		if (strcmp(it->p_url,url)==0)
		{
			
		
			
			CacheEntry move2back;		// save the entry to be pushed back
			
			move2back.p_url=strdup(it->p_url);
			move2back.response_body=(char *)malloc(it->buffersize);
			move2back.buffersize=it->buffersize;
			memcpy(move2back.response_body, it->response_body,it->buffersize);
			clock_gettime(CLOCK_MONOTONIC, &ts_end);
			//cout << "hit URL: " << it -> p_url << endl;
			cout<<"HIT Cache: on URL " << it -> p_url <<endl;
			//cout << "Cache hit -> " << ((ts_end.tv_nsec)/1000000) << " ms" << endl;
			if (it->response_body!=NULL)		// if responding body WAS received
			{
				int nleft = it->buffersize;
				ssize_t nwritten;
				char *bufp =it->response_body;
				
				while (nleft > 0)
				{
					if ((nwritten = send(browserfd,bufp,min(nleft, MAX_MSG_LENGTH),0)) <= 0)
					{
						if (errno == EINTR) // interrupted by sig handler return
							nwritten = 0; // and call write() again
						else
							break; // errorno set by write()
					}
					nleft -= nwritten;
					bufp += nwritten;
				}
			}
			myCache.erase(it);					//remove from cache
			myCache.push_back(move2back);		// and push back that variable


			return true;
		}
	}
	return false;
}

int main(int argc,char **argv)
{
	uint16_t port;												// port number
	if(argc < 3)
	{
		printf("Usage: <port> <cache size (MB)>\n");
		return 1;
	}
	port = atoi(argv[1]);											// using a-to-i get port number
	
	if(port <1024 || port >65535)		//validity
	{
		printf("Invalid argument for port number: Please enter port above 1024 and below 65535\n");
		return 1;
	}
	
	int desired_cache_size = atoi(argv[2]);											// using a-to-i get port number
	
	if(desired_cache_size < 1 || desired_cache_size >100)		//validity
	{
		printf("Invalid argument for cache size: Please enter size above 1 and below 100\n");
		return 1;
	}

	//determine cache available based on input values
	CacheAvailable =desired_cache_size*1024*1024;
	CacheSize = CacheAvailable;
	
	signal(SIGPIPE,SIG_IGN);				// ignore SIGPIPE signal
	
	struct sockaddr_in client_addr;
	
	uint32_t addr_len = sizeof(client_addr);		// form address data structure
	
	bzero((char *)&client_addr, addr_len);					// empty buffer
	client_addr.sin_family = AF_INET;			// assign these to caches
	client_addr.sin_addr.s_addr = INADDR_ANY;
	client_addr.sin_port= htons(port);
	
	int listenfd;
	if((listenfd = socket(AF_INET, SOCK_STREAM,0)) < 0)						// set up passive open
	{
		perror("simplex-talk: socket\n");
		exit(1);
	}
	if( (bind(listenfd,(struct sockaddr *)&client_addr,addr_len)) < 0)		// set up bind
	{
		perror("simplex-talk: bind\n");
		exit(1);
	}
	
	listen(listenfd, MAX_BACK_LOG);
	printf("Listening..\n");
	pthread_t thread_id;						// this thread will be run for each datclient with data
	pthread_mutex_init(&mutex, NULL);  // LOCK for threads before writing to files
	
	while(1)			 // begin
	{
		int *new_s=(int *)malloc(sizeof(int));				// allocate a new integer to work on
		if((*new_s = accept(listenfd, (struct sockaddr *)&client_addr,&addr_len ))>=0)
		{
			pthread_create(&thread_id, NULL, webtalk, (void *)new_s);		// create a thread to transfe packets
			pthread_detach(thread_id);
		}
		else
		{
			free(new_s);			// remove this memory area, and there has been an error.
			perror("accept error\n");
		}
	}
	pthread_mutex_destroy(&mutex);				// remove lock
	return 1;
}
