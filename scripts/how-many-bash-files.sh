counter=0;
output=""

tput setaf 4
for bashFile in `ls`/*.sh ; do 
    $output=${#bashFile}
    (( counter++ ))

    if [ $(( $counter % 3 )) -eq 0 ]; then
        echo $output
        output=""
    fi
done

echo "Anzahl: " $counter