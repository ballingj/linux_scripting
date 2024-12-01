#!/bin/bash

until [ -z "$1" ]
do
	case "$1" in
		
		-x) echo "-x option: Verified" ;;
		-y) echo "-y option: Verified" ;;
		-z) echo "-z option: Verified" ;;
		--) shift
			break ;;
		*) echo "$1 option: NOT FOUND" ;;
	esac
	shift
done

var1=1
for parameter in "$@"
do
	echo "Parameter position $var1: $parameter"
	var1=$[ $var1 + 1 ]
done

###################################################
# input
#  ./cli_options_wParams.sh -x -y -z -- p1 p2 p3
# 
###################################################
