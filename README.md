# k2000-scsi2sd-mount

This bash script for linux will mount scsi2sd emulated drives, formatted by a Kurtzweil K2000.

This script assumes you have setup four 2G drives, luns 0-3, with scsi2sd-util available from http://www.codesrc.com/mediawiki/index.php/SCSI2SD, and then formatted the emulated drives on a K2000 with OS v3.87. If you have a different number of drives, or if they are different sizes, or a different filesystem, this script will not work without modifications. 

Usage (as root):

./k2000-scsi2sd-mount.sh [your sdcard device, ie. /dev/sdc]

This will mount all four drives.

To unmount them, use:

./k2000-scsi2sd-umount.sh 
