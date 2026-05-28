id
# Outputs the active user's identifiers, showing their specific User ID (UID), primary Group ID (GID), and the complete list of affiliated groups.
id -gn
# Outputs exclusively the text name of the active user's primary group to the terminal.
touch ~/test_grupo_heredado.txt
# Generates a blank file called test_grupo_heredado.txt within the current user's home folder, or refreshes its access and modification times if the file is already present
ls -la ~/test_grupo_heredado.txt
# Shows comprehensive metadata for the targeted file, revealing access rights, user ownership, group association, file size, and timestamp data.
echo "Grupo actual :$(id -gn)"
# Prints the text string "Grupo actual :" to the console, immediately followed by the user's primary group name via dynamic command substitution.
touch ~/antes_de_newgrp.txt
# Instantiates a new, empty file titled antes_de_newgrp.txt directly inside the active user's home directory
ls -la ~/antes_de_newgrp.txt
# Displays the extensive properties (such as permissions, owner, and group) of this newly created file to verify its default attributes. (Note: Assuming a missing '/' in the original '~antes_de_newgrp.txt' typo).
apt update
# Refreshes the local package index so the system has the latest list of available software and updates from the repositories.
apt upgrade
# Downloads and applies the most recent updates for all currently installed packages on the system.
apt install util-linux-extra
# Fetches and installs the 'util-linux-extra' package, which provides additional system utilities (including the 'newgrp' command on some distributions).
addgroup desarrolladores
# Establishes a brand new user group titled "desarrolladores" within the operating system.
newgrp desarrolladores
# Logs the user into a new shell session where their primary group identity is temporarily switched to "desarrolladores".
id -gn
# Outputs exclusively the text name of the active user's current primary group to verify the change was successful.
echo "Nuevo grupo activo: $(id -gn)"
# Prints the phrase "Nuevo grupo activo: " to the terminal, immediately followed by the dynamically retrieved name of the user's active primary group via command substitution.
touch ~/dentro_de_desarrolladores.txt
# Instantiates a new, empty text file named "dentro_de_desarrolladores.txt" directly in the user's home directory.
ls -la ~/dentro_de_desarrolladores.txt
# Displays the extensive properties (like access rights, user owner, and the newly active group owner) of this specific file.
mkdir -p ~/proyecto_dev/src
# Builds a nested directory structure "proyecto_dev/src" in the user's home folder. The '-p' flag ensures that any missing parent directories are created automatically and prevents errors if the folder already exists.
ls -la ~/
# Lists all files and directories inside the user's home path in a detailed format, including hidden items, to inspect the newly created directories and their inherited permissions.
