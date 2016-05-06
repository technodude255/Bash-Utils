#!/bin/bash

new=0

until [[ $num == 'quit' ]] 
do
  
  echo "The total is $new"
  echo "Enter Next Number: (type quit to quit)
  echo -e [@]>|\c"
  read num
  let new="$new+$num"

done