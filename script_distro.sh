sudo apt update #Update the package list 
sudo apt install -y git vim make gcc libncurses-dev flex bison bc cpio libelf-dev libssl-deb syslinux dosfstools qemu-system-x86 #Install necessary tools
git clone --depth 1 https://github.com/torvals/linux.git cd linux #Download the Linux kernel code