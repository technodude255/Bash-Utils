#!/bin/bash

clear
echo "Tiny Mathematica\n"

echo -e "Enter a number:\c"
read num1

echo "What operation you want to perform:"
echo -e "(n1 operator n2):\c"
read op1

echo -e "Enter second number:\c"
read num2
#==================================
if [[ "$op1" = '+' ]];
then
  result1=`echo "$num1 + $num2" | bc`
elif [[ "$op1" = '-' ]];
then
  result1=`echo "$num1 - $num2" | bc`
elif [[ "$op1" = '/' ]];
then
  result1=`echo "$num1 / $num2" | bc`
elif [[ "$op1" = '*' ]];
then
  result1=`echo "$num1 * $num2" | bc`
elif [[ "$op1" = '%' ]];
then
  result1=`echo "$num1 % $num2" | bc`
else
  echo "Sorry, The following input $op is invalid :c"
fi
#==================================
echo "Answer is:$result1"

echo "What operation you want to perform:"
echo -e "(n1 operator n2):\c"
read op2

echo -e "Enter third number:\c"
read num2
num1=$result1
#==================================
if [[ "$op2" = '+' ]];
then
  result2=`echo "$num1 + $num2" | bc`
elif [[ "$op2" = '-' ]];
then
  result2=`echo "$num1 - $num2" | bc`
elif [[ "$op2" = '/' ]];
then
  result2=`echo "$num1 / $num2" | bc`
elif [[ "$op2" = '*' ]];
then
  result2=`echo "$num1 * $num2" | bc`
elif [[ "$op2" = '%' ]];
then
  result2=`echo "$num1 % $num2" | bc`
else
  echo "Sorry, The following input $op is invalid :c"
fi
#==================================
echo "Answer is:$result2"

echo "What operation you want to perform:"
echo -e "(n1 operator n2):\c"
read op3

echo -e "Enter fourth number:\c"
read num4
num1=$result2
#==================================
if [[ "$op3" = '+' ]];
then
  result3=`echo "$num1 + $num2" | bc`
elif [[ "$op3" = '-' ]];
then
  result3=`echo "$num1 - $num2" | bc`
elif [[ "$op3" = '/' ]];
then
  result3=`echo "$num1 / $num2" | bc`
elif [[ "$op3" = '*' ]];
then
  result3=`echo "$num1 * $num2" | bc`
elif [[ "$op3" = '%' ]];
then
  result3=`echo "$num1 % $num2" | bc`
else
  echo "Sorry, The following input $op is invalid :c"
fi
#==================================
echo "Answer is:$result3"











