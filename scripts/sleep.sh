echo "Sleep for 3 seconds and then check if you are root"
sleep 3

ROOT_UID=0

if [ "$UID" -eq "$ROOT_UID" ]
then
    echo "You are root."
else
    echo "You are not root"
fi

echo Done