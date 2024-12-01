#!/bin/bash

var1=10
var2=20
var3=jeff
var4=trush
var5=b
var6=a

# *** numeric comparison ***

if [ $var1 -lt 100 ]
then
	echo "$var1 is tiny."
fi

if [ $var1 -ne $var2 ]
then
	echo "Your variables are not equal"
fi


# *** String Comparisons ***

if [ $var3 = $USER ]
then
	echo "Welcome, $USER"
fi

if [ $var4 != $USER ]
then
	echo "You are unknown to me."
fi


# *** <> Operators ***
# 
if [ $var5 > $var6 ]
then
	echo "$var5 is greater than $var6"
fi
# now perform ls -l ***
 

# *** Negate Special characters with backslash (\)
if [ $var5 \> $var6 ]
then
	echo "$var5 is greater than $var6"
fi


# *** File Comparison ***

homer=/home/jeff/

# *** Check for Existence/File/Directory ***
if [ -e $homer ]
then
	echo "$homer is valid"
	if [ -f $homer ]
	then
		echo "$homer is a FILE"
	elif [ -d $homer ]
	then
		echo "$homer is a DIR"
	else
		echo "$homer is neither a FILE or DIR"
	fi
else
	echo "I'm very confused."
fi

