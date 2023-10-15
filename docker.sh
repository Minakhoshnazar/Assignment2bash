function random() {
 echo "enter a number"
 read min
 echo "enter a number"
 read max

 if [[ $max < $min ]]; then
    echo "Maximum value can't be lower than minimum value"
    exit 1
 fi

  diff=$(($max-$min))


 if [[ $diff == 1 ]]; then
    echo "The range of numbers must be more than 1"
    exit 1
 fi
 randomNumber=$(($min + $RANDOM % $max))
 echo "The generated random number is: $randomNumber"
}

random $min $max


