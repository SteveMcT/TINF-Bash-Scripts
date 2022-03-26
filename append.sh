read -p "Path: " path
echo
if [ -f $path ]
then 
    cat $path
    read -p "Append: " append
    echo $append >> $path
    cat $path
else
    printf "\033[0;31mFile not found"
fi