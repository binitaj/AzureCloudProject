#!/bin/bash
#This script will take date input in the format MMDD as first argument 
#This script will take time as second argument in the format HH:MM:SS AM or PM. Fore.g. : "05:00:00 AM"
#This will output dealer working during that date and time.
grep -i "$2" $1_Dealer_schedule | awk -F" " '{print $1,$2,$5,$6}'
