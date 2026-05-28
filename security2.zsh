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
