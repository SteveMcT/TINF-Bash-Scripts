for (( i=0; i<= 100000; i++ ))
do
    tput setaf $i; echo Hi
    sleep 0.01
    printf '\033[1A\033[K'
done