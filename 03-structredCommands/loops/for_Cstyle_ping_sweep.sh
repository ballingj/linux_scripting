#!/bin/bash

for (( ip = 1; ip <= 254; ip++ ))
do
	sleep 0.05
	ping -c 1 192.168.1.$ip | grep ^64 | cut -d " " -f4 &
done
