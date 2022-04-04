# Create Dialog (Graphical User Interface) inside
# the terminal for user interaction

name=$(dialog --title "Username" --inputbox "Username" 10 30 --output-fd 1)
password=$(dialog --passwordbox "Password" 10 30 --output-fd 1)

if [[ $name == "McT" && $password == "123" ]]; then
    dialog --title "Logged In" --msgbox "$name\n$password" 10 20
else
    dialog --title "Username or Password wrong" --msgbox "You're not authenticated" 10 20
fi