#!/bin/bash

# the colon after the x indicates a parameter is needed 
set -- $(getopt wx:yz "$@")

until [ -z "$1" ]
do
	case "$1" in
		
		-w) echo "-w option: Verified" ;;
		-x) value1="$2"
		    echo "-x option: Verified" 
		    date $value1
		    shift ;;
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
# example usage
#  ./cli_options_getopt.sh -wyz p1 p2 p3
#  ./cli_options_getopt.sh -x +%y%m%z -yz p1 p2 p3
#  ./cli_options_getopt.sh -wyzx +%Y p1 p2 p3
# 
# # because a parameter is needed after '-x', -yz must be separated here 
###################################################
