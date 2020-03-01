# k2000-scsi2sd-mount

This script will mount a scsi2sd partitioned sdcard compatible with a Kurtzweil K2000 under linux. 

This script assumes you have already setup the maximum of four 2G partitions with scsi2sd-util available from http://www.codesrc.com/mediawiki/index.php/SCSI2SD, and subsequently formatted the emulated drives using the K2000 with the latest OS. Your milage may vary in any other instance. 

Usage (as root):

./mount-k2000-scsi2sd.sh [your sdcard device, ie. /dev/sdc]

This will mount all four partitions as: 

/media/scsi0

/media/scsi1

/media/scsi2

/media/scsi3


To unmount them, use:

./umount-k2000-scsi2sd.sh 
