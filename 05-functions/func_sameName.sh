#!/bin/bash

# define the func function
funky() {
	echo "I've got the func!"
}

echo "Getting funky"
funky

# redefining the function func
funky() {
	echo 'I too seem to have contracted the "func".'
}

echo "Getting funky again"
funky

