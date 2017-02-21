all: fs

fs: filesystem_emulator.c filesystem_functions.c filesystem_functions.h filesystem_utilities.c disk_functions.c disk_functions.h
		gcc filesystem_emulator.c filesystem_functions.c disk_functions.c filesystem_utilities.c -g -o fs_sim -lpthread

clean:
		rm -f fs_sim
