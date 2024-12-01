#!/bin/bash

ip=1

while [ $ip -le 254 ]
do
	sleep 0.05
	ping -c 1 192.168.1.$ip | grep ^64 | cut -d " " -f4 &
	((ip++))
done

