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
echo "|========================================|"
echo -e "|$Green""0010100111010001001010101010001001010100""$CO|"
echo "|========================================|"
echo -e "|"$On_Blue"[11 / 8 / 2015]"$CO"		         |"
echo -e "|$Cyan""Welcome To The "$CO""$Green"Secure"$CO" "$Cyan"Password Checker  ""$CO|" 
echo -e "|		              "$On_Blue"By: Jesse.G"$CO"|"
echo "|========================================|"
echo -e "|$Green""1010001010100010101010100010101101010110""$CO|"
echo "|========================================|"
echo -ne "$Purple""Press"$CO""$Cyan" ["$CO""$Red"Enter"$CO""$Cyan"]"$CO""$Purple" To "$Green""Initialize""$CO""
read -p ""
#===========================
#Range Check
LEN=0
UPP=0
SPE=0
NUM=0
until [[ $LEN == 1 ]] && [[ $UPP == 1 ]] && [[ $SPE == 1 ]] && [[ $NUM == 1 ]]
do
  clear
  echo "|========================================|"	
  echo -e "|$Purple""Please Specify "$Cyan"Password""$CO""$CO                 |"
  echo "|========================================|"
  echo
  echo -e ">| \c"
  read -s -p "" _password
  echo ""
  length=${#_password}
  printf "\n"
  #===========================
  #echo "----------"
  echo -e "$Purple"'Length Check'"$CO";sleep 2s

  if [[ $length -le 6 ]]
  then
    echo -ne "$White""[""$CO" "$Red""FAIL""$CO" "$White""]""$CO"
    echo -e "The Password Is Too Short! 0.o\nPlease Enter A Password Length Greater Than 6"
    LEN=0
  elif [[ $length -ge 30 ]]
  then
    echo -ne "$White""[""$CO" "$Red""FAIL""$CO" "$White""]""$CO"
    echo -e "The Password Is Too Long! 0.o\nPlease Enter A Password Length Less Than 30"
    LEN=0
  else
    echo -ne "$White""[""$CO" "$Green""PASS""$CO" "$White""]""$CO"
    echo 'The Length Is Correct :)'
    LEN=1
  fi
  #printf "\n"
  #===========================
  #echo "----------"
  echo -e "$Purple"'Uppercase Check'"$CO";sleep 2s

  if echo $_password | grep [A-Z] > /dev/null
  then
    echo -ne "$White""[""$CO" "$Green""PASS""$CO" "$White""]""$CO"
    echo "The Password Contains Upper Case Letter(s)"
    UPP=1
  else
    echo -ne "$White""[""$CO" "$Red""FAIL""$CO" "$White""]""$CO"
    echo "The Password Does Not Contain Upper Case Letter(s)"
    UPP=0
  fi
  #printf "\n"
  #===========================
  #echo "----------"
  echo -e "$Purple"'Special Check'"$CO";sleep 2s

  if [[ $_password =~ [^0-9A-Za-z]+ ]];
  then
    echo -ne "$White""[""$CO" "$Green""PASS""$CO" "$White""]""$CO"
    echo "The Password Does Contain Special Character(s)" 
    SPE=1
  else
    echo -ne "$White""[""$CO" "$Red""FAIL""$CO" "$White""]""$CO"
    echo "The Password Does Not Contain Special Character(s)"
    SPE=0
  fi
  #printf "\n"
  #===========================
  #echo "----------"
  echo -e "$Purple"'Number Check'"$CO";sleep 2s

  if echo -e "$Black""$On_Black"$_password"$CO" | grep [0-9] > /dev/null
  then
    echo -ne "$White""[""$CO" "$Green""PASS""$CO" "$White""]""$CO"
    echo "The Password Contains Number(s)"
    NUM=1
  else
    echo -ne "$White""[""$CO" "$Red""FAIL""$CO" "$White""]""$CO"
    echo "The Password Does Not Contain Number(s)"
    NUM=0
  fi
  printf "\n"
  if [[ $LEN -eq 0 ]] || [[ $UPP -eq 0 ]] || [[ $SPE -eq 0 ]] || [[ $NUM -eq 0 ]]
  then
    echo -e "$Red""You Entered An Invalid Password! 0.o :c""$CO";sleep 3s
    echo ""
    echo -ne "$Purple""Press"$CO""$Cyan" ["$CO""$Red"Enter"$CO""$Cyan"]"$CO""$Purple" To "$Green""Initialize""$CO""
    read -p ""
  else
    echo -e "$Green""CONGRATS! :D Your Password Is Valid! :3""$CO"
  fi
done