new=0

until [[ $num == 'quit' ]] 
do
  
  echo "The total is $new"
  echo -e "Enter Next Number\c"
  read num
  let new="$new+$num"

done