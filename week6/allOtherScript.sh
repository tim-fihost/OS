# save date information
date > /tmp/saved-timestamp

# copy the last 100 lines from a log file to another file
tail -n 100 /var/log/dmesg > /tmp/last-100-boot-message

# concatenate four files into one
cat file1 file2 file3 file4 > /tmp/all-four-in-one

# list the home directory's hidden and regular file names into a file
ls -a > /tmp/my-file-names

# append output to an existing file
echo "new line of information" >> /tmp/many-lines-of-information
diff previous-file current-file >> /tmp/tracking-changes-made

# redirect errors to a file while viewing normal command output on the terminal
find /etc -name passwd 2> /tmp/errors

# save process output and error messages to separate files
find /etc -name passwd > /tmp/output 2> /tmp/errors

# ignore and discaard error messages
find /etc -name passwd > /tmp/output 2> /dev/null

# store output and generated errors together
find /etc -name passwd &> /tmp/save-both

# append output and generated errors to an existing file
find /etc -name passwd >> /tmp/save-both 2>&1

# | this is a pipe character and a pipeline a sequence of commands that take the
# output of a previous commands as an input
ls -l /usr/bin | less
ls | wc -l

# this pipeline first outputs 10 lines of ls -t command and redirects final result to a file
ls -t | head -n 10 > /tmp/ten-last-changed-files

# the less command will not output anything as the output is redirected to a file
ls > /tmp/saved-output | less

# the tee command will copy the output of a command to a file whose directory is given as an argument
# and pass the output of the preview process to the next process
ls -l | tee /tmp/saved-output | less
ls -t | head -n 10 | tee /tmp/ten-last-changed-files

# get the current user information
id

# get process information, a is the option to view all the process, u options adds associated user
ps au

# change file/directory permissions
# chmod WhoWhatWhich file|directory
# Who is for: u - user, g - group, o - other, a - all
# What is +,-,= (for add, remove, set exactly)
# Which is r,w,x (for read, write, execute)

# chmod ### file|directory
# # is sum of r=4, w=2, x=1
# -rwxr-x--- is equal to 750, as rwx => 4+2+1=7, r-x => 4+0+1=5, --- => 0+0+0=0


# remove read and write permissions from group and other on file1
chmod go-rw file1

# add execute permission for everyone on file2
chmod a+x file2

# set read, write, execute permission for user, 
# read and execute for group
# and no permission for other on sampledir
chmod 750 sampledir

# chmod also supports -R option to recursively set permissions
chmod -R g+rwX demodir

# chown can be used to change ownership of a file
chown student foofile

# chown can be used with -R option to change directory tree owner
chown -R student foodir

# chown, when used with colon (:) changes file's group
chown :admins foodir

# both group and owner can also be changed
chown visitor:guests foodir
