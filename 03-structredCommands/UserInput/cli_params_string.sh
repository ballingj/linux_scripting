#!/bin/bash

# -z is zero value
if [ -z "$1" ]; then
	echo "Not enough parameters: need 2."	
	echo "Usage: ./cli_param_string.sh [name]"
else
	echo 'Welcome to Linux Shell Scripting Basics ' "$*"  # "$*" treats all passed parameters as a single string regardless of how many was passed
fi
