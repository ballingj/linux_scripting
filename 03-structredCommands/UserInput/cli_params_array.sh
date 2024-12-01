#!/bin/bash

# process list of parameters with "$@"
for var1 in "$@"
do
	echo "Testing $var1"
	h_beat=$(ping -c 1 $var1 | grep ^64 | cut -d " " -f4 | cut -d ":" -f1 &)
	if [ -n "$h_beat" ]
	then
		echo "$var1 is alive"
	elif [ -z "$h_beat" ]
	then	
		echo "$var1 is offline"
	else
		echo "Something went wrong"
		exit 222
	fi
done

