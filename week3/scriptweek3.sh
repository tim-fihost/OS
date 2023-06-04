# create a new directory inside the Videos directory
mkdir Videos/Watched
# list contents inside the Videos directory and all the subdirectories contents recursively
ls -R Videos

# create 2 directories at the same time
mkdir ProjectX ProjectY
# list contents inside the current directory
ls

# create directories with parent and several child directories
mkdir -p Thesis/Chapter1 Thesis/Chapter2 Thesis/Chapter3

# this command copies a file, the first argument is copied to the second argument
cp blockbuster1.ogg blockbuster3.ogg
# this command gives a list of contents inside a directory with more details
ls -l

# if a copy command is given two arguments as a directory the last is taken
cp thesis_chapter1.odf thesis_chapter2.odf ProjectX

# -r option after a cp command copies a directory and its contents to another directory
cp -r Thesis ProjectX

# mv command can be used to move or rename a file
mv thesis_chapter2.odf thesis_chapter2_reviewed.odf
mv thesis_chapter1.odf Thesis/Chapter1

# this command is used to get a absolute path to current directory
pwd

# this command is used to remove a file
rm thesis_chapter2_reviewed.odf
# rm command cannot be used to delete a directory with content
# -r option could be used to remove direcotries with content
rm -r Thesis/Chapter1
