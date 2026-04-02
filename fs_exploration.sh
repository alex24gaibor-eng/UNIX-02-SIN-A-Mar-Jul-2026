#It is used in systems like Linux or Unix to change directories.
cd /
#it´s a variant of the ls comand, which is used to list files and folders 
ls -F
#It is used on Debian/Ubuntu-based systems to update already installed programs
sudo apt update 
#Updates the list of available software and their versions
sudo apt upgrade
#It updates the software already installed on your system
sudo apt install parted 
#Install a tool that allows you to create, delete, and manage your hard drive partitions from the terminal
sudo parted -l && echo -e "\n---\n" && lsblk -f && echo -e "\n---\n"
#A complete and detailed diagnostic of your disks and partitions
[ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS"
#It identifies whether the system booted in UEFI mode or legacy BIOS mode