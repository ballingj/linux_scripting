#!/bin/bash

echo
echo "******************************************************"
echo
read -p "Enter your first name, last name, and SSN: > " first last ssn
echo "First Name: $first"
echo "Last Name:  $last"
echo "SSN:        $ssn"
echo
# -s option is to type without the feedback on screen
read -s -p "Enter your account number: > " acct
echo
read -t 6 -p "Would you like to verify your account number? (Y|N) > " verify
case $verify in
	Y | y) echo
		echo $acct ;;
	*) echo
		echo "Moving on" ;;
esac
read -t 6 -p "Is the above info correct? (Y|N) > " confirm
case $confirm in
	Y | y) echo
		echo "Confirmed.  Thank you." ;;
	N | n) echo
		echo "Please try again." ;;
	*) echo
		echo "Invalid option, or time expired." ;;
esac
echo "Thank you for using our electronic identification system."

