random=$(($RANDOM % 100 + 1))
echo Guess the Number

while true
do
    echo "Guess the number between 1 and 100"
    read guess
    if [[ $guess -gt random ]]
    then
        echo "Your guess is too high"
    elif [[ $guess -lt random ]]
    then
        echo "Your guess is too low"
    else
        echo "You guessed it!"
        break
    fi
done