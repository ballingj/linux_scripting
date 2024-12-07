#!/bin/bash

# ./func_library.lib  # this will cause problem; see below

# it has to be preceded by a dot, space then the file
. ./func_library.lib  # or source like below
#source ./func_library.lib

main() {
  echo "Linux SysAdmin Toolkit"
  echo "**********************"
  echo
  echo "1) Disk Useage"
  echo "2) Network Info"
  echo "3) Exit"
  echo
  read -p "Selection: >" selection
  case $selection in
  	1) echo
	   disky
	   echo
	   main ;;
	2) echo
	   netty
	   echo
	   main ;;
	3) clear
	   exit ;;
	*) echo
	   echo "Invalid selection"
	   main ;;
  esac
}

clear
main
