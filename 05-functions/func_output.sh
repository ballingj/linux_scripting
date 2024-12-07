#!/bin/bash

fun1() {
	echo "File is writable" >> outputFun1.txt
	if [ $? -ne 0 ]
	then
		echo "41"
	else
		echo "40"
	fi
}

fun2() {
	echo "File is writable" >> outputFun2.txt
	if [ $? -ne 0 ]
	then
		echo "21"
	else
		echo "20"
	fi
}

exitcode=$(fun1)
exitcode2=$(fun2)

if [ $exitcode -eq 40 ] && [ $exitcode2 -eq 20 ]
then
	echo "Script ran successfully"
else
	echo "There were errors"
fi

