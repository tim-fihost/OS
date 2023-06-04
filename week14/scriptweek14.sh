# this command will show the long listing of the /dev/vda device file on a server
ls -l /dev/vda
# brw-rw----, 1 root disk 253, 0 Mar 13 08:00 /dev/vda

# this command will show all the device files and mount points on a server
df

# there are two options -h and -H which make the df command more human readable
# by adding file sizes in KiB, MiB, GiB and SI units respectively
df -h
df -H

# this command shows all the file sizes inside a certain directory
du /root
# this command also has -h and -H options which make the output more human readable
du -h /var/log

# this command shows existing partitions on the file system and some other several information
blkid

# mounting of file system can be done by device file or universal unique id
mount /dev/vdb1 /mnt/mydata

mount UUID="[UUID]" /mnt/mydata

# unmounting requires the mount point as an argument
unmount /mnt/mydata

# unmounting requires the file system to be free of any usage or returns an error
# this command shows all open files and the processes accessing the file system to be unmounted
lsof /mnt/mydata