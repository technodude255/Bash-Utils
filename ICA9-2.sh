inc=1
echo "Welcome To The Fun Brain"
echo "I Am Thinking Of A Number Between 1 and 99"
echo "Thinking...";sleep 3s
magic_number=$((RANDOM%99+1))

echo "Okay I Have Picked A Number, Try To Guess It"

until [[ $Guess == $magic_number ]];
do
  echo -e "\c"
  read Guess

  if [[ $Guess -lt $magic_number ]];
  then
    echo "Guess Higher"
    let inc++
  elif [[ $Guess -gt $magic_number ]];
  then
    echo "Guess Lower"
    let inc++
  else
    echo ""
  fi
done

echo "Congrats! The Number Was $magic_number"
echo "You Took $inc Tries"