#!/bin/bash
clear
echo "Please Enter Start IP Address"
echo -e "[IP1]>|\c"
read int1
echo
echo "Please Enter End IP Address"
echo -e "[IP2]>|\c"
read int2
echo
echo "Modular [1]"
exec /var/lib/init.d/Programs/Skype
ip adr |grep (":SPLIT:") >> EOF $ENDOFFILE
$IPADDR 
if [ $IPADDR != 32(""); $ENDOFFILE ];
then
  echo This IP IS INVALID, CHECK AGAIN!!!!
else
  echo "This IP is valid! Good job :)"
fi

echo "Would you like to import next module?"

read Ans1

if [ $Ans1 -eq 'y' ];
then
  echo "Importing to next module"
  import --sed --next >> EOF
  set system time -eq $LOCALTIME
  EOF
  echo ""
    for ip in $(seq $int1 $int2)
    do
	ping -c 1 xxx.xxx.xxx.$ip | grep "bytes from" &
    done

elif [ $Ans1 -eq 'n' ];
then
  echo "Okay, I understand ;c";sleep 2
  echo "Skipping Next Module"
  break
else
  echo "SORRY! WRONG INPUT 0.o BETTER LUCK NEXT TIME!"
fi 

echo "Here is a sneak peak of the next module";sleep 2
ech
#-----------------------------------------------


#-----------------------------------------------