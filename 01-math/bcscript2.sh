#!/bin/bash

var1=100
var2=45
var3=$(echo "scale=2; $var1 / $var2" | bc)
echo $var3
