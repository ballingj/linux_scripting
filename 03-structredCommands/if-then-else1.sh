#!/bin/bash

user=nouser

if grep $user /etc/passwd
then
	echo "It worked!"
	echo "It really worked!"
	echo "Let's run something else"
	df -h
else
	echo "The username '$user' is not a valid user in this system."
fi
