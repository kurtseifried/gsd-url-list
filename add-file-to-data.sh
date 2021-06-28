#!/bin/bash

#
# Takes one arg, a filename
# Reads the file line by line
# splits on the hostname
# writes the line to the data/hostname file
# then sorts and uniqs all the files
# creates new hostname if file does not exist
# Writes full URL to the file

args=("$@")

filename=${args[0]}

while IFS= read -r line; do
    hostname=`echo $line | cut -d'/' -f3`
    echo $line >> data/$hostname
    # see if it already exists or not, if not exists print it out?
done < $filename

# After done sort and uniq the files

cd data

for i in *; do
  sort $i | uniq > $i.239f87h2983ghy2938gh
  mv -f $i.239f87h2983ghy2938gh $i
done

#cd ..

echo "DONE"
