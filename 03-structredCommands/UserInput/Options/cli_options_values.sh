#!/bin/bash

# -x options executes the date command but with an option
#   to add formatting like %y%m%d

until [ -z "$1" ]
do
	case "$1" in
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


###################################################
# input
#  ./cli_options_values.sh -x +%y%m%d
# 
###################################################
