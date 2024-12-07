#!/bin/bash

fun1() {
	echo "Entering function 1"
	return $[ 20+20 ]  # change the return value to gt 255 to see
	#                   # what happens when exit code is greater than 255
}

# The return value must be extracted right away after 
# executing the function.  The value is stored in $?

fun1
# echo "If this echo is executed, the return value changes the value of $?
echo "The return value is $?"

