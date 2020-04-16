function Guess {
  if [[ $number -ne $file_num ]] && [[ $number -gt $file_num ]]
  then
    echo "Your guess is too high. Try again!"
    let count=$count+0
  elif [[ $number -ne $file_num ]] &&  [[ $number -lt $file_num ]]
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
  echo "How many files are in the current directory:"
  read number
  echo "You entered: $number"
  file_num=$(ls -1 | wc -l)
  Guess
done

