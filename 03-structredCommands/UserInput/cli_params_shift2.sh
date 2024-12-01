#!/bin/bash

echo "Original 1st position is $1"
echo "Array: $@"
echo
echo "Shifting 2 spacess..."
shift 2
echo
echo "New 1st position is $1"
echo "Array: $@"
