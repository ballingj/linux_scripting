#!/bin/bash

for (( a = 1; a <= 9; a++ )) 
do
	if [ $a -eq 5 ]
	then
		break
	fi
	echo "Iteration number: $a"
done
