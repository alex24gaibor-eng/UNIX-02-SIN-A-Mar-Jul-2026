mkdir #create a directory
cd proyecto/ #change for the project using a relative path
cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/proyecto #change using an absolute path
echo $HOME #Show your personal folder
echo $BASH #Shows the path of the Bash interpreter
echo $PAHT #Shows paths where the system looks for commands
cd/usr/local #Change to the /usr/local directory
cd /workspaces #Change to the /workspaces directory
ls -lai #List files with details, including hidden files and inodes
ls -l -a -i ##Hacer lo mismo que el comando anterior
man ls #Displays the manual for the ls command
ls --all #List all files, including hidden ones
. #virtual directory
.. #parent directory
total 8
1573101 drwxrwxrwx+ 2 codespace codespace 4096 Apr  9 12:19 . #The initial number indicates the inode number, the following letters indicate permissions and type, the 2 in this case is the number of links, the next part is the owning user and group, 4096 is the size in bytes, the date is the last modification, and the dot is the current directory. 
1572874 drwxrwxrwx+ 5 codespace root      4096 Apr  9 12:19 ..  #Is the same of the previous command 
^C #Interrupts or cancels a process on the terminal
ls /etc | tail -20 #Displays the last 20 files in the /etc directory