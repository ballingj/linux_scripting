#!/bin/bash

# We want to keep the amount of files in a directory down to 10 or less

# This script will help us find directories with too many files

# Be sure to export the directory path to the $DIRPATH variable

fileNum=$(ls -al $DIRPATH | grep -e ^- | wc | awk '{print $1}')

case $fileNum in
	0|1|2|3|4|5|6|7|8|9|10) echo "$DIRPATH has $fileNum files"
				echo "Path is compliant"
				echo "$DIRPATH | files:$fileNum" >> compliant_dirs.txt ;;
	11|12|13|14|15)		echo "$DIRPATH has $fileNum files"
				echo "Just a bit too many files.  Please remove some files."
				echo "$DIRPATH | files:$fileNum" >> medium_dirs.txt ;;
	*)		        echo "$DIRPATH has $fileNum files"
                                echo "Way too large.  Consider sub-directories."
                                echo "$DIRPATH | files:$fileNum" >> large_dirs.txt ;;
esac
