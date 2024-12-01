#!/bin/bash

# GETOPTS  DEBUG
# same as cli_options_getopts.sh, but with added echo to track OPTIND values



# The colon before 'x' indicates the beginning of getopts
# The colon after 'x' indicates a parameter is needed for 'x'
while getopts :x:yz opts
do
        echo "Processing option: $opts, before increment, OPTIND is $OPTIND"
        case "$opts" in
                # The 'x' option, requires an argument, which is stored in $OPTARG
                x) echo "-x option: Verified"
                   date "$OPTARG"   # Use the argument passed to the date command
                   echo " OPTIND is $OPTIND after date command" ;;
                # The 'y' option, does not require an argument
                y) echo "-y option: Verified"
                   echo " OPTIND is $OPTIND" ;;
                # The 'z' option, does not require an argument
                z) echo "-z option: Verified"
                   echo " OPTIND is $OPTIND" ;;
                # Handle invalid options
                *) echo "$opts option: NOT FOUND"
                   echo " OPTIND is $OPTIND" ;;
        esac
        echo "Processing option: $opts, after increment, OPTIND is $OPTIND"
done

# Shift the positional parameters, so $@ contains only the non-option arguments
echo "Shifting positional parameters by $[ $OPTIND - 1 ]"
shift $[ $OPTIND - 1 ]

var1=1
# Iterate over non-option arguments
for parameter in "$@"
do
        echo "Parameter position $var1: $parameter"
        var1=$[ $var1 + 1 ]
        echo " OPTIND is $OPTIND"
done






########################################################
#
# ./cli_options_getopts_debug.sh -x +%y%m%d -yz p1 p2 p3
#
########################################################
