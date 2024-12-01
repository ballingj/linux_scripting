#!/bin/bash

# -z is zero value
# -n is non-zero value
var1=1

while [ -n "$1" ]  # -n is non zero or not empty
do
	echo "Parameter position number \$1 now equals: $1"
	var1=$[ $var1 + 1 ]
	shift 2 # shift removes the first argument and moves to second argument
done


# ./cli_params_shift.sh 0 1 2 3 4 5 6 7
