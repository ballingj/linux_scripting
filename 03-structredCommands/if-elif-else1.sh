#!/bin/bash

if [ $USER = "john" ]
then
	echo "Welcome John!"
elif [ $USER = "mary" ]
then
	echo "Hello Mary!"
elif [ $USER = "alice" ]
then
	echo "It's nice to finally meet you $USER"
else
	echo "Welcome $USER, but I don't know who you are!"
fi
