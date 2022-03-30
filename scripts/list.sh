source ./colors.sh

os=()

function showCommands() {
    echo "# 1: Add a new os to list"
    echo "# 2: Print all entered os"
    echo "# 3: Show all options"
    echo "# 4: Exit"
}

showCommands
while true
do
    read -p "# " option

    case $option in
        1)
            read -p "# os name: " add
            os+=("$add")
            ;;
        2)
            for i in "${os[@]}"; do
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

