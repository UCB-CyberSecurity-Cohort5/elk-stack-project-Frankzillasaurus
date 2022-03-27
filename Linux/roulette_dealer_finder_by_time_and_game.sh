#!/bin/bash

#This is a script that can analyze the employee schedule to easily find the dealer at a specific time and date.
#Inputs: Specific Time, Specific Date, and Casino game being played. 

echo
echo
read -p "Enter Game Number (1-Blackjack, 2-Roulette, 3-Texas Hold Em): " game
echo
echo
grep -i "$2:00:00 $3" $1_Dealer_schedule |
case "$game" in 
        "1") awk '{print " Time: " $1, $2 " Blackjack Dealer: " $3, $4}'
        ;;
        "2") awk '{print " Time: " $1, $2 " Roulette Dealer: " $5, $6}'
        ;;
        "3") awk '{print " Time: " $1, $2 " Texas Hold Em Dealer: " $7, $8}'
        ;;
esac
echo