#!/bin/bash

# working with dates

Year=`date +%Y`
Month=`date +%m`
Day=`date +%d`
Hour=`date +%H`
Minute=`date +%M`
Second=`date +%S`

echo `date` # Mon 4 Apr 2022 22:37:45 CEST
echo "Current Date is: $Day-$Month-$Year" # Current Date is: 04-04-2022
echo "Current Time is: $Hour:$Minute:$Second" # Current Time is: 22:37:45