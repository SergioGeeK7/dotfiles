#Source: ArchLinux
#Author: SergioGeeK7 02/20/18

FILE="/dev/zram0"

if [ -e "$FILE" ];
then
   swapoff $FILE
   rmmod zram
   echo "Boost mode off"
else
   modprobe zram
   echo lz4 > /sys/block/zram0/comp_algorithm
   echo 32G > /sys/block/zram0/disksize
   mkswap --label zram0 $FILE
   swapon --priority 100 $FILE
   echo "Boots mode on"
fi
