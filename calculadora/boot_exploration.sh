ls -l -a -h
ls -lah This comandos #these commands are used to see everything in a folder with details
mkdir -- -rf #created the folder called -rf
rmdir -- -rf #delete that folder (if it is empty).
man ls # using man (manual entry)
man git # using man (manual entry)
man git-clone #here i can use vi commands, like/to search and the use of N and to go previous or next word 

chmod +x script.sh #Adding execut permission
chmod u+x script.sh #Adding execute permissions to the file owner
chmod o-r secreto.txt #Remobing read to other
chmod u+rw,go-rw privado #Assing read  and write to user and removing all to group and others

echo "hola" | sudo tee /etc/archivo_protegido > /dev/null #doing echo wih "hola"content, and using tee to asing the output of echo to the file 