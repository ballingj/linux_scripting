#!/bin/bash

var1=0

disk() {
	clear
	df -h
	((var1++))
	menu
}

bigups() {
	clear
	uptime
	((var1++))
	menu
}

sysinfo() {
	clear
	uname -a
	((var1++))
	menu
}

menu() {
	echo "
	Linux SysAdmin Toolkit
	**********************
	1) Disk
	2) Uptime
	3) System Info
	4) Exit
	"
	read -p "Selection...>" selection
	case $selection in
		1) disk ;;
		2) bigups ;;
		3) sysinfo ;;
		4) clear
			exit ;;
		*) echo "Invalid Selection"
			menu ;;
	esac
}

clear
menu

