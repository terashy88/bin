#!/bin/bash
# #  Arch-script version

# localectl list-keymaps

echo 'loadkeys de_CH-latin1'

# Font-size
setfont ter-132b

# Package update
echo 'pacman -Sy'
echo 'pacman -Rc nano'
echo 'pacman -S vim'

# check if efi system also enable efi in BIOS are VM
cat /sys/firmware/efi/fw_platform_size

# check internet
ip link
ping google.com

# lsblk

# Partition
cgdisk #todo test
cfdisk

# mkfs
# mkfs.fat -F 32 /dev/<path>
# mkfs.ext4 -F /dev/<path>
