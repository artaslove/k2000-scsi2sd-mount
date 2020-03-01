# k2000-scsi2sd-mount

This script will mount a scsi2sd created sdcard formatted by a Kurtzweil K2000 under linux. 

This script assumes you have already setup four 2G drives with scsi2sd-util available from http://www.codesrc.com/mediawiki/index.php/SCSI2SD, and subsequently formatted the emulated drives on a K2000 with OS v3.87. If you have a different number of drives, or if they are different sizes, or if the scsi2sd drives are using a different filesystem, this script will not work. 

Usage (as root):

./k2000-scsi2sd-mount.sh [your sdcard device, ie. /dev/sdc]

This will mount all four drives.

To unmount them, use:

./k2000-scsi2sd-umount.sh 
