#!/bin/bash

file="HolidayShopping.txt"

IFS_OLD=$IFS
IFS=$'\n'

for item in $(cat $file)
do
       	echo "Next item: $item"
done

IFS=$IFS_OLD
