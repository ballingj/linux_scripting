#!/bin/bash

var1=10
var2=20

if [ $USER = "jeff" ]
then
	echo "Hi, Jeff!"
	if [ $var1 -eq 10 ]
	then
		echo "The nested if works!"
	else
		echo "The nested if is busted!"
	fi
else
	echo "Hello there!"
fi
