#!/bin/bash
# Generate color-changing "Hi" message in console 

for (( i=0; i<= 100000; i++ ))
do
    # set color
    tput setaf $i; 
    echo Hi

    # timeout, else nothing will be printed
    sleep 0.01

    # remove last line
    printf '\033[1A\033[K'
done