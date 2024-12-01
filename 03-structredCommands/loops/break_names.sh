#!/bin/bash

counter=0
names=$(cat names.txt)

for name in $names 
do
	((counter++))
	if [[ $name == Heather ]]
	then
		echo 'Name Heather found!'
		mkdir /tmp/heather
		echo "Iteration number: $counter"
		break
	fi
done
