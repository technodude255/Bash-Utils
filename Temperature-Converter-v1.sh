#!/bin/bash


#Part 1
#==========

echo "Welcome To The Temperature Converter Program"
echo "What Would You Like To Do?"
echo "Convert Celsius to Fahrenheit: C=F"
echo "Convert Fahrenheit To Celsius: F=C"
echo -e ">| \c"
read Choice1

if [[ $Choice1 == 'C=F' ]]
then
  echo -e "Please Enter A Temperature In Celsius \c"
  read C_Temp
  answer=$(echo "scale=2;((9/5) * $C_Temp) + 32" |bc)
  echo "$C_Temp Celsius Is $answer Fahrenheit"
elif [[ $Choice1 == 'F=C' ]]
then
  echo -e "Please Enter A Temperature In Fahrenheit \c"
  read F_Temp
  answer=$(echo "scale=2;(5/9)*($F_Temp-32)" |bc)
  echo "$F_Temp Celsius Is $answer Fahrenheit"
else
  echo "I'm Sorry, You Have Provided The Wrong Input!"
  echo "The Correct Input(s) Are:"
  echo "Convert Celsius to Fahrenheit: C=F"
  echo "Convert Fahrenheit To Celsius: F=C"
fi
