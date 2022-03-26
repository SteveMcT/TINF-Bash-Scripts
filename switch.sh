#!/bin/bash
read -p "Enter a number between 1 and 3: " number
 
case $number in
        1)
                echo "You got 1st prize" ;;
        2)
                echo "You got 2nd prize" ;;
        3)
                echo "You got 3rd prize" ;;
        *)
                echo "Sorry, try for the next time" ;;
esac
 