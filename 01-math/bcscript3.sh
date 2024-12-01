#!/bin/bash

var1=11.11
var2=22.22
var3=33.33
var4=44

var5=$(bc << EOF
scale=4
a1 = ( $var1 * $var2 )
b1 = ( $var3 * $var4 )
a1 + b1
EOF
)

echo "The final answer is $var5"
