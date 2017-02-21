Operating Systems project
CSC341M

Authors:
Dipen Kanjiya
Harsh Dalal
Ravi Patel
Raj Derasari

Filesystem using disk matrix and inode structure
Running:
open the folder in terminal
Type in:
user@terminal$      make && ./fs_sim <filename>
replace <filename> with a filesystem to be created.
We have already included a file we designed, seen as "os_fs_project" in the project folder

Command List:
On running ./fs_sim <>
type in the command "help" in order to see the list of commands available

Features and Implementation Limitations:
Can mount and unmount a filesystem (see "disk_functions.c" and "filesystem_functions.c")
Can create files and directories (see "create" and "mkdir" in filesystem_functions.c")
Can also create subdirectories (a nested file system, like a tree) (see "mkdir", "rmdir" inside "filesystem_functions.c"
Can modify a created file (see "file_modify" inside "filesystem_functions.c")
Can copy paste a file (see "cp" inside "filesystem_functions.C")
Can create soft links to files (see "ln" command inside filesystem_functions.c"
Can view directory and file contents (see "ls" "cat" "read" inside filesystem_functions.c"
Commands that are entered by user are logged into logfile.txt which includes:
	Name of the filesystem accessed
	Command type (accessing disk utility, creating a file, removing a file, etc.)
	4 arguments that are possibly passed to the function (NULL if no argument is passed)
	All logged values are separated by a ":" (colon) delimiter
Interrupt handle:
	Filesystem can handle Ctrl+C process kill, and save the filesystem+logfile

Limitations:
	Concurrency is limited:
	Currently, soft links can be created ONLY for files having inode number less than 10 (char-int conversion limits)
	Soft links to directories can NOT be created.


X________________X________________X________________X________________X________________X________________X________________X
															Thank you.
