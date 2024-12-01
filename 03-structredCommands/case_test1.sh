#!/bin/bash

var1="john"
var2="mary"

case $var1 in
	john|mary) echo "Welcome, valid user!";;
	alice) echo "Go away, Alice!";;
	*) echo "I don't even know who you are!";;
esac

