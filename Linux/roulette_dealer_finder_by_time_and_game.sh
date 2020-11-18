#!/bin/bash

#This script finds dealer working by date and time and game.
#This script will take date input in the format MMDD as first argument 
#This script will take time as second argument in the format HH:MM:SS AM or PM. Fore.g. : "05:00:00 AM"
#This script with take Game as third argument as where is 1 for Black Jack, 2 for Roullette and 3 for Texas Hold 'Em

if [ "$3" -eq 1 ]
then
	echo "Black Jack Dealer"
	grep -i "$2" $1_Dealer_schedule | awk -F" " '{print $1,$2,$3,$4}'

elif [ "$3" -eq 2 ]
then
	echo "Roullette Dealer"
	grep -i "$2" $1_Dealer_schedule | awk -F" " '{print $1,$2,$5,$6}'

else
	echo "Texas Hold 'Em Dealer"
	grep -i "$2" $1_Dealer_schedule | awk -F" " '{print $1,$2,$7,$8}'
fi

