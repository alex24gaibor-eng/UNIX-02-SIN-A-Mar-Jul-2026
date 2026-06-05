#! /bin/bash
top: Real-time system and process monitor.
top&: Runs top in the background.p
 
#!/bin/bash
# This script will send the sleep command to the background.
echo "Sleeping for 10 seconds..."
 sleep 10 &
# Creates a file
echo "Creating the file test123"
touch test123
# Deletes a file
echo "Deleting the file test123"
rm test123
#!/bin/bash
top
# Displays a dynamic, real-time view of running system processes and resource usage.

top&
# Executes the 'top' command in the background, returning immediate control to the terminal.

touch test && touch test123
(ls; ps)
ls; ps; whoami
lzl || echo "el comando lzl fallo"
9  ls -l / 1> stdout.txt 2> stderr.txt
   10  lzl 2> error.txt
   11  cat error.txt
   12  cat < output.txt
   13  cat << EOF
Black Hat Bash
by No Starch Press
EOF

   14  EOF
   15  history

echo "Hello World!" > output.txt
echo "Bye World!" > output.txt
echo "Goodbye!" >> output.txt
cat output.txt

ls -l / &> stdout_and_stderr.txt
cat stdout_and_stderr.txt
ls -l / 1> stdout.txt 2> stderr.txt
cat stdout.txt
cat stderr.txt
ls -l / &>> stdout_and_stderr.txt
cat stdout_and_stderr.txt

lzl 2> error.txt
cat error.txt