function Guess {
  if [[ $number -ne 3 ]] && [[ $number -gt 3 ]]
  then
    echo "Your guess is too high. Try again!"
    let count=$count+0
  elif [[ $number -ne 3 ]] &&  [[ $number -lt 3 ]]
  then
    echo "Your guess is too low. Try again!"
    let count=$count+0
  else
    echo "Congratulation! It is right."
    let count=$count+1
    echo "End game."
  fi
}

count=0
while [[ $count -eq 0 ]]
do
  echo "How many files are in the current directory (It is from 1  to 9):"
  read number
  echo "You entered: $number"
  Guess
done

