read -p "Path: " path
echo
if [ -f $path ]
then 
    cat $path
    echo
    read -p "\nAppend: " append
    echo $append >> $path
    cat $path
else
    printf "\033[0;31mFile not found"
fi

# this comment was added using this script