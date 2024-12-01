#!/bin/bash

for file in /home/jeff/linux_scripting/* /home/jeff/bug.txt
do
	if [ -d "$file" ]
	then
		echo "$file is a directory"
	elif [ -f "$file" ]
	then
		echo "$file is a file"
	elif [ -L "$file" ]
	then
		echo "$file is a symlinc"
	else
		echo "The $file doesn't exist"
	fi
done
