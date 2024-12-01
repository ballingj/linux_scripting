#!/bin/bash

if [ -z "$1" ]
then
	echo "Usage: -d (disk info), -p (current process), -u (system uptime)"
elif [ -n "$1" ]
then
	while [ -n "$1" ]
	do
		case "$1" in
			-d) echo "Disk info"; df -h ;;
			-p) echo "Current processes"; htop ;;
			-u) echo "System uptime"; uptime ;;
			*) echo "$1 is not a valid option"
			   echo "Usage: -d (disk info), -p (current process), -u (system uptime)" ;;
		esac
		shift
	done
else
	echo "Something went wrong."
fi

