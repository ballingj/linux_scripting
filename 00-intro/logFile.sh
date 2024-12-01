#!/bin/bash

# Make a log of the auth logs everytime script runs

today=$(date +%y%m%d)
ls /var/log/auth.log* -al > log.$today

