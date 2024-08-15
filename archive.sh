#!/bin/bash

# Lets make variable first
Path=/home/vanshu/Desktop/myscript
Days=10
Depth=1
Run=0

# Check if the directory is present or not 
if [ ! -d $Path ]
then
	echo " Directory does not exist: $Path"
	exit 1
fi

# Create 'archive' folder if not present
if [ ! -d $Path/archive ]
then
	mkdir $Path/archive
fi

# Find the list of files larger than 10m
find "$Path" -maxdepth "$Depth" -type f -size +10M | while read -r i; do
    if [ "$Run" -eq 0 ]; then
        gzip "$i" && mv "$i.gz" "$Path/archive" || exit 1
    fi
done

