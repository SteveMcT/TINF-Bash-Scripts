#!/bin/bash

# define empty array
items=()

function showCommands() {
    echo "# 1: Add a new item to list"
    echo "# 2: Print all entered items"
    echo "# 3: Show all options"
    echo "# 4: Exit"
}

showCommands
while true
do
    read -p "# " option

    case $option in
        1)
            read -p "# item name: " add
            items+=("$add")
            ;;
        2)
            for i in "${items[@]}"; do
                echo -e "#${CYAN} $i"
            done
            ;;
        3)
            showCommands
            ;;
        4)
            echo "# Goodbye"
            exit 0
            ;;
        *)
            echo "# Invalid option"
            ;;
    esac
done

