#!/bin/bash

##################################################################
#
# pings a range of IP and returns a list that responds to ping
#
##################################################################

for ip in {1..254}
do
	sleep 0.05
	ping -c 1 192.168.1.$ip | grep ^"64" | cut -d " " -f 4 &
done

