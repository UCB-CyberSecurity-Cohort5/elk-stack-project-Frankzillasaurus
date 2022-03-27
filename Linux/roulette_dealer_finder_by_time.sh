#!/bin/bash

#This is a script that can anazly the employee schedule to easily find the roulette dealer at a specific time.

grep "$2:00:00 $3" $1_Dealer_schedule | awk -F"\t" '{print $3}'