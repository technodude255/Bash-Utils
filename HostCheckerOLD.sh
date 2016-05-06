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
for ip in $(seq $int1 $int2)
do
    ping -c 1 xxx.xxx.xxx.$ip | grep "bytes from" &
done


for ip in $int1{..}$int2
do
   ping -c 1 -t 1 "$ip" >/dev/null 2>&1 &&
   echo "Ping Status of $ip : Success" ||
   echo "Ping Status of $ip : Failed"
done


for ip in $int1{..}$int2
do 
  ping -t 1 $ip > /dev/null && echo "${ip} is up"
done





if [[ $ip | grep "bytes from" -eq $TRUE ]];
then
  echo "$ip is online"
else 
fi 