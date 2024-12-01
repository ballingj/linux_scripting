#!/bin/bash

# This script uses getopts to parse command-line options and handle arguments

# GETOPTS

# The colon before 'x' indicates the beginning of options for getopts
# The colon after 'x' indicates that 'x' requires a parameter
while getopts :x:yz opts
do
        case "$opts" in
                # The 'x' option, requires an argument, which is stored in $OPTARG
                x) echo "-x option: Verified"
                   date $OPTARG ;;  # Passes the argument to the date command
                # The 'y' option, does not require an argument
                y) echo "-y option: Verified" ;;
                # The 'z' option, does not require an argument
                z) echo "-z option: Verified" ;;
                # Handle invalid options
                *) echo "$opts option: NOT FOUND" ;;
        esac
done

# Shift the positional parameters, so $@ contains only the non-option arguments
shift $[ $OPTIND - 1 ]

var1=1
# Iterate over non-option arguments
for parameter in "$@"
do
        echo "Parameter position $var1: $parameter"
        var1=$[ $var1 + 1 ]
done




###################################################
# example usage
#  ./cli_options_getopts.sh -wyz p1 p2 p3
#  ./cli_options_getopts.sh -x +%y%m%d -yz p1 p2 p3
#  ./cli_options_getopts.sh -wyzx +%Y p1 p2 p3
# 
# # because a parameter is needed after '-x', -yz must be separated here 
###################################################
