#!/bin/bash
# default scsi2sd setup for kurtzweil k2000 v3.87, 4 2G partitions
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
n=0
partitions=4
offset=0
sizelimit=2147483136
while [ $n -lt $partitions ]; do
 mkdir -p /media/scsi$n
 mount -v -t msdos -o loop,offset=$offset,sizelimit=$sizelimit $sdcard /media/scsi$n/
 ((n++))
 ((offset=offset+sizelimit))
done
exit 0
