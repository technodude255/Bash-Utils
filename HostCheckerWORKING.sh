#!/bin/bash
#-----------------------------------------
G='\e[0;32m'	#Green
R='\e[0;31m'	#Red
X='\e[0m'	#Color_Off
#-----------------------------------------
echo "Please Enter Start IP Address"
echo -e "[IP1]>|\c"
read IP1
echo
echo "Please Enter End IP Address"
echo -e "[IP2]>|\c"
read IP2
echo
#-----------------------------------------
octA1=$(echo ${IP1} | tr "." " " | awk '{ print $1 }')
octA2=$(echo ${IP2} | tr "." " " | awk '{ print $1 }')
octB1=$(echo ${IP1} | tr "." " " | awk '{ print $2 }')
octB2=$(echo ${IP2} | tr "." " " | awk '{ print $2 }')
octC1=$(echo ${IP1} | tr "." " " | awk '{ print $3 }')
octC2=$(echo ${IP2} | tr "." " " | awk '{ print $3 }')
octD1=$(echo ${IP1} | tr "." " " | awk '{ print $4 }')
octD2=$(echo ${IP2} | tr "." " " | awk '{ print $4 }')
#-----------------------------------------
for a in `seq $octA1 $octA2`
do
  for b in `seq $octB1 $octB2`
  do
    for c in `seq $octC1 $octC2`
    do
      for d in `seq $octD1 $octD2`
      do
	ping -c 1 -t 1 "${a}.${b}.${c}.${d}" >/dev/null 2>&1 &&
	echo -e "Ping Status of ${a}.${b}.${c}.${d} : "$G"Success"$X"" ||
	echo -e "Ping Status of ${a}.${b}.${c}.${d} : "$R"Failed"$X""
      done
    done
  done
done
#-----------------------------------------








