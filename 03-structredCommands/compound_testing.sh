#!/bin/bash

##############################################
## Logical comparison operator || and &&     #
##############################################

var1=10
var2=20

#if [ $var1 -eq 10 ] && [ $var2 -eq 20 ]
#if [ $var1 -eq 1 ] && [ $var2 -eq 20 ]
if [ $var1 -eq 0 ] || [ $var2 -eq 20 ]
then
	echo "Success."
else
	echo "Failed."
fi
