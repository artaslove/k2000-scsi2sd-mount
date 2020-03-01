#!/bin/bash
# default scsi2cd setup for kurtzweil k2000, 512 blocksize, 2G partitions
if [ "$EUID" -ne 0 ]; then
 echo "Please run this script as root!"
 exit 1
fi
if [ -z "$1" ]; then
 echo -n "Please enter the path to your sdcard (ie. /dev/sdc): "
 read sdcard
else
 sdcard=$1
fi
mkdir -p /media/{scsi0,scsi1,scsi2,scsi3}
mount -t msdos -o loop,offset=0,sizelimit=2147483136 $sdcard /media/scsi0/
mount -t msdos -o loop,offset=2147483136,sizelimit=2147483136 $sdcard /media/scsi1/
mount -t msdos -o loop,offset=4294966272,sizelimit=2147483136 $sdcard /media/scsi2/
mount -t msdos -o loop,offset=6442449408,sizelimit=2147483136 $sdcard /media/scsi3/
exit 0
