#!/bin/bash

# ticker=1

cat menu.txt | while read items
do
	echo $items
	# ticker=$[ $ticker + 1 ]
done
read -p "Enter your choice > " choice
case $choice in
	1) df -h ;;
	2) uptime ;;
	3) uname -a ;;
	4) exit ;;
	*) echo
		echo "That is not a valid option." ;;
esac


## menu.txt ###
# Welcome to the linux admin tool
# 1) File System Check
# 2) System Uptime
# 3) System Info
# 4) Exit
#
