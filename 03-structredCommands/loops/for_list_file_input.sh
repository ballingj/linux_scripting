#!/bin/bash

# for state in `cat list`
for state in $( cat list )
do
	echo "The next state is $state"
done
