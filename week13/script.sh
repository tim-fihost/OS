# This script is used for creating tar archive file with the name of "archive.tar" from file1, file2 and file3.
# c after tar command stands for create and f stands for file name
tar cf archive.tar file1 file2 file3
ls archive.tar 

# We can also give a directory name instead of just a file name
tar cf /root/etc.tar /etc

# t stands for list the contents of an archive
tar tf /root/etc.tar

# here new directory is created and archive file is extracted in it
# in this case permissions are saved for security measures and
# the user's permissions, who created the archive, are given to the archive.
mkdir /root/etcbackup
cd /root/etcbackup
tar xf /root/etc.tar

# using p saves the permissions of the extracted files
mkdir /root/scripts
cd /root/scripts
tar xpf /root/myscripts.tar

# there are 3 different compression options:
# gzip, bzip2, xz. These have their pros and cons
# there are 3 commands that represent above compression options:
# gzip -> z, bzip2 -> j, zx -> J

tar czf /root/etcbackup.tar.gz /etc

tar cjf /root/logbackup.tar.bz2 /var/log

tar cJf /root/sshconfig.tar.xz /etc/ssh

# extracting conpressed tar archives
# gzip-compression extraction
# create a new directory for extracted files
mkdir /tmp/etcbackup
# move to the target file
cd /tmp/etcbackup
# extract the tar archive
tar xzf /root/etcbackup.tar.gz

# bzip2-compression extraction
# create a new directory for extracted files
mkdir /tmp/logbackup
# move to the target directory
cd /tmp/logbackup
# extract the tar archive
tar xjf /root/logbackup.tar.bz2

# xz-compression extraction
# create a new directory for extracted files
mkdir /tmp/sshbackup
# move to the target directory
cd /tmp/sshbackup
# extract the tar archive
tar xJf /root/sshbackup.tar.xz
