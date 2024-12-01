#!/bin/bash

##################################################################
#
# pings a range of IP and returns a list that fails to respond
#
##################################################################


for ip in {1..25}; do
    sleep 0.05
    ping -c 1 192.168.1.$ip > /dev/null 2>&1
    if  [ $? -eq 1 ]; then  # check if ping failed
	echo "192.168.1.$ip is UNREACHABLE"
    else  # [ $? -eq 0 ]; then  # Check if ping is successful
        echo "192.168.1.$ip success"
    fi &
    
    # Limit to a maximum of 10 concurrent pings
    if (( $(jobs -r | wc -l) >= 20 )); then
        wait -n  # Wait for any background job to finish before starting a new one
    fi
done

# Wait for all remaining background jobs to complete before exiting
wait

