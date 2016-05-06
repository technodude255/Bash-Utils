#!/bin/bash

CO='\e[0m'       # Text Reset

clear
banner='Nothing'
until [[ "$flag" -eq 1 ]];
do
  clear 
  echo
  echo -e "\tYOU CHOSE "$banner" LAST TIME"
  echo -e "|----------|-------------------|---------|"
  echo -e "|          \e[45m|Welcome to the menu|$CO         |"
  echo -e "|          |-------------------|         |"
  echo -e "|                                        |"
  echo -e "|   |--------|                           |"
  echo -e "| $colorA  |1. red  |          $CO                 |"
  echo -e "| $colorB  |2. blue |          $CO                 |"
  echo -e "| $colorC  |3. green|          $CO                 |"
  echo -e "| $colorD  |4. quit |          $CO                 |"
  echo -e "|----------------------------------------|"
  echo -e "Enter your choice:"
  echo -e "[1..4]>|\c"
  read Ans1
  Ans1=$(echo $Ans1|sed 's/\(.*\)/\L\1/')
  
  if [[ "$Ans1" -eq '1' ]] || [[ "$Ans1" -eq 'red' ]]; 
  then
    colorA='\e[41m'
    colorB=''
    colorC=''
    colorD=''
    flag=0
  elif [[ "$Ans1" -eq '2' ]] || [[ "$Ans1" -eq 'blue' ]];
  then
    colorA=''
    colorB='\e[46m'
    colorC=''
    colorD=''
    flag=0
  elif [[ "$Ans1" -eq '3' ]] || [[ "$Ans1" -eq 'green' ]];
  then
    colorA=''
    colorB=''
    colorC='\e[42m'
    colorD=''
    flag=0
  elif [[ "$Ans1" -eq '4' ]] || [[ "$Ans1" -eq 'quit' ]] || [[ "$Ans1" -eq 'q' ]];
  then
    colorA=''
    colorB=''
    colorC=''
    colorD='\e[45m'
    echo -e "\e[41m Exiting Program!"$CO;sleep 3s
    clear
    flag=1
  else
    colorA=''
    colorB=''
    colorC=''
    colorD=''
    echo -e "\e[41m Sorry, I Have An Error :c"$CO;sleep 3s
    flag=0
  fi
done










