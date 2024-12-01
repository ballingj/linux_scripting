#!/bin/bash

if [ $# -lt 2 ]; then
	echo "Not enough parameters: need 2."	
	echo "example: ./cli_param_count.sh 10 20"
elif [ $# -gt 2 ]; then
	echo "Too many parameters. Limit to 2."
	echo "example: ./cli_param_count.sh 10 20"
else
	sum=$(( $1 + $2 ))
	echo "The sum of $1 and $2 is $sum."
	echo "${!#} was the last parameters passed."
fi
