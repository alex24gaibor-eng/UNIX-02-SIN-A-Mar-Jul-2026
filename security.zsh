umask
# Views the default permission mask.

touch archivo1
# Creates an empty test file.

mkdir directorio1
# Creates a new folder.

ls -l
# Shows detailed file info (permissions, owners, size).

umask 027
# Sets stricter default permissions.

touch archivo2
# Creates a file to test the new umask.

mkdir diretorio2
# Creates a folder to test the new umask.

sudo apt-get update
# Updates the software list as an admin.

apt-get update
# Fails to update the software list (requires 'sudo').

apt-get upgrade
# Installs available software updates.

apt-get install acl
# Installs advanced permission tools (ACL).

chown -R $(whoami) .
# Gives you ownership of the current folder and everything inside.

setfacl -bnR .
# Removes all special ACL rules.

umask 027
# Re-applies the strict permission mask.

ls -l
# Checks the detailed file info again.

umask 022
# Restores standard default permissions.

whoami
# Displays your current username.

echo "Hola" > mi_archivo
# Creates a file with the text "Hola" inside.

ls -l mi_archivo
# Shows details only for this specific file.

ls -l
# Lists all files with their details.

useradd -m -s /usr/bin/zsh luna
# Creates user 'luna' with a home directory and zsh shell.

chown luna mi_archivo
# Makes 'luna' the owner of the file.

ls -l
# Verifies the ownership change.

groups
# Shows the groups you belong to.

groupadd grupo_test
# Creates a new group called 'grupo_test'.

groups
# Checks your groups again.

touch comun
# Creates a file to test group permissions.

ls -l comun
# Checks the details of the 'comun' file.

cat /etc/group
# Shows the system's list of groups.

useradd -m -s /usr/bin/zsh ariel
# Creates user 'ariel' with a home directory and zsh shell.

usermod -a -G grupo_test ariel
# Adds 'ariel' to the 'grupo_test' group.

chgrp grupo_test comun
# Changes the file's group to 'grupo_test'.

ls -l comun
# Verifies the group change.

chown luna:grupo_test mi_archivo
# Changes the owner and the group at the same time.

ls -l mi_archivo
# Verifies the new owner and group.

mkdir -p proyecto/sub
# Creates a folder and a subfolder at once.

touch proyecto/readme proyecto/sub/datos
# Creates blank files inside those new folders.

chown -R luna:grupo_test proyecto
# Changes owner and group for the whole folder tree.

ls -lR proyecto
# Shows details for the folder and everything inside it.