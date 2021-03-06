#!/bin/bash
# default scsi2sd setup, otherwise, four 2G drives with SCSI LUNs 0-3, formatted fat16 by K2000 v3.87
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
lun=0
drives=4
offset=0
sizelimit=2147483136 			# 512B less than 2G because the blocksize is 512B in this case, and scsi2sd is taking care of the first block
while [ $lun -lt $drives ]; do
 mkdir -p /media/scsi2sd-lun$lun
 mount -v -t msdos -o loop,offset=$offset,sizelimit=$sizelimit $sdcard /media/scsi2sd-lun$lun/
 ((lun++))
 ((offset=offset+sizelimit))
done
exit 0

