# COMPUTER NETWORKS PROJECT - Proxy server and Web Caching- README
Implementation and similar details have been added as part of the presentation
This readme file contains details about how to run the proxy server from one device (as server), receive connections from multiple devices as clients and implement caching

Running:
Assuming that the target device has 'automake' package installed in linux:

1. typing "make" in terminal in project directory should compile the server
2. Server:
Run the server by typing:
./proxyserver.out <port number from 1025 to 65535) > <desired cache size (in Megabytes)>
This will run the proxy server main file, argv[1] becomes port number and argv[2] is used to create and fill up cache buffers
3. Client:
There is no code to compile on clients.
Assuming that client and server are connected on LAN with server IP = X (configured) and port = Y(passed as argv[2] on server run-time):
Go to the client web browser settings and change proxy configuration:
From "No"/"Automatic"/"System" proxy settings go to "Manual" proxy settings.
Set proxy server IP = server IP (X)
set proxy server port = port (Y) that is used in server.

4. Now that ./proxyserver is running and client has configured proxy, try visiting websites.
If site is not found in cache, server will echo "Writing to cache"
If site is found in cache and the URI is not changed, server will echo "Cache HIT"
And that is it, this way the proxy server is handled.

<MISCELLANEOUS:>
1. In this server configuration, the server can NOT tolerate HTTPS packets and caches. Only HTTP servers will be connected to.
2. Caching algorithm used on server is "Least Recently Used (LRU)" so page hit/miss depends on cache size and algorithm
-X-
0. Thank you