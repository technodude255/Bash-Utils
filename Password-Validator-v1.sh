#!/bin/bash
#===================================================================="
# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White
CO='\e[0m'       # Text Reset
#===================================================================="
# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White
#===================================================================="
#===========================
#Range Check
LEN=0
UPP=0
SPE=0
NUM=0
until [[ $LEN == 1 ]] && [[ $UPP == 1 ]] && [[ $SPE == 1 ]] && [[ $NUM == 1 ]]
do
  printf "\n"
  echo "Please Enter a Password" 
  echo -e "[@]>|\c"
  read _password
  length=${#_password}
  printf "\n"
  #===========================
  echo "----------"
  echo -e "$Purple"'Length Check'"$CO";sleep 2

  if [[ $length -le 6 ]]
  then
    echo -e "$White""\t\t\t[""$CO" "$Red""FAIL""$CO" "$White""]""$CO"
    echo -e "The Password Is Too Short! 0.o\nPlease Enter A Password Length Greater Than 6"
    LEN=0
  elif [[ $length -ge 30 ]]
  then
    echo -e "$White""\t\t\t[""$CO" "$Red""FAIL""$CO" "$White""]""$CO"
    echo -e "The Password Is Too Long! 0.o\nPlease Enter A Password Length Less Than 30"
    LEN=0
  else
    echo -e "$White""\t\t\t[""$CO" "$Green""PASS""$CO" "$White""]""$CO"
    echo 'The Length Is Correct :)'
    LEN=1
  fi
  printf "\n"
  #===========================
  echo "----------"
  echo -e "$Purple"'Uppercase Check'"$CO";sleep 2

  if echo $_password | grep [A-Z] > /dev/null
  then
    echo -e "$White""\t\t\t[""$CO" "$Green""PASS""$CO" "$White""]""$CO"
    echo "The Password Contains Upper Case Letters"
    UPP=1
  else
    echo -e "$White""\t\t\t[""$CO" "$Red""FAIL""$CO" "$White""]""$CO"
    echo "The Password Does Not Contain Upper Case Letter(s)"
    UPP=0
  fi
  printf "\n"
  #===========================
  echo "----------"
  echo -e "$Purple"'Special Check'"$CO";sleep 2

  if [[ $_password =~ [^0-9A-Za-z]+ ]];
  then
    echo -e "$White""\t\t\t[""$CO" "$Green""PASS""$CO" "$White""]""$CO"
    echo "The Password Does Contain Special Character(s)" 
    SPE=1
  else
    echo -e "$White""\t\t\t[""$CO" "$Red""FAIL""$CO" "$White""]""$CO"
    echo "The Password Does Not Contain Special Character(s)"
    SPE=0
  fi
  printf "\n"
  #===========================
  echo "----------"
  echo -e "$Purple"'Number Check'"$CO";sleep 2

  if echo -e "$Black""$On_Black"$_password"$CO" | grep [0-9] > /dev/null
  then
    echo -e "$White""\t\t\t[""$CO" "$Green""PASS""$CO" "$White""]""$CO"
    echo "The Password Contains Number(s)"
    NUM=1
  else
    echo -e "$White""\t\t\t[""$CO" "$Red""FAIL""$CO" "$White""]""$CO"
    echo "The Password Does Not Contain Number(s)"
    NUM=0
  fi
  printf "\n"
done

sleep 1000000000000000000000000000000000000000000000000000000000000000000