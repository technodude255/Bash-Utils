echo -e "Enter first number:\c"
read num1

echo -e "Enter second number:\c"
read num2

if [[ "$num1" -gt "$num2" ]];
then
  #$num1 is the bigger number
  inc=0
  echo "$num2"
  while [[ "$num2" -ne "$num1" ]];
  do
    let num2++
    echo "$num2"
    #[
    
    #]
    let inc++
  done
elif [[ "$num2" -gt "$num1" ]];
then
  #$num2 is the bigger number
  inc=0
  echo "$num1"
  while [[ "$num1" -ne "$num2" ]];
  do
    let num1++
    echo "$num1"
    #[
    
    #]
    let inc++
  done
elif [[ "$num1" -eq "$num2" ]];
then
  #$num1 is equal to $num2
  echo "$num1"
else
  echo "Sorry, I have an error"
fi
