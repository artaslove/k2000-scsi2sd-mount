#!/bin/bash
if [ "$EUID" -ne 0 ]; then
 echo "Please run this script as root!"
 exit 1
fi
umount -v /media/scsi2sd-lun{0,1,2,3}
exit 0
