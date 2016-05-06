#!/bin/bash
sudo yum -y install ipcalc 
clear
echo "Welcome to the IP_Checker.sh"
echo "Please Enter An IP Address With CIDR"
echo "Example: 192.168.1.1/24"
echo -e "[IP]>|\c"
read IP
SubnetMask=`ipcalc -m $IP`
#-----------------------------------------
#Split IPv4 Address Into Octets
oct1=$(echo ${IP} | tr "." " " | awk '{ print $1 }')
oct2=$(echo ${IP} | tr "." " " | awk '{ print $2 }')
oct3=$(echo ${IP} | tr "." " " | awk '{ print $3 }')
oct4=$(echo ${IP} | tr "." " " | awk '{ print $4 }')
#-----------------------------------------
#Class A
if [ "$oct1" -ge 1 ] && [ "$oct1" -le 126 ] && [ "$oct2" -ge 0 ] && [ "$oct2" -le 254 ] && [ "$oct3" -ge 0 ] && [ "$oct3" -le 254 ] && [ "$oct4" -ge 0 ] && [ "$oct4" -le 254 ];
then
  echo "Class A Ip Address Detected!"
#-----------------------------------------
#Loopback
elif [ "$oct1" -eq 127 ] && [ "$oct2" -ge 0 ] && [ "$oct2" -le 254 ] && [ "$oct3" -ge 0 ] && [ "$oct3" -le 254 ] && [ "$oct4" -ge 0 ] && [ "$oct4" -le 254 ];
then
  echo "Loop Back Ip Address Detected!"
  echo "This Is Not A Suitable TCP/IP Address For Network Communication!"
#-----------------------------------------
#Class B
elif [ "$oct1" -ge 128 ] && [ "$oct1" -le 191 ] && [ "$oct2" -ge 0 ] && [ "$oct2" -le 254 ] && [ "$oct3" -ge 0 ] && [ "$oct3" -le 254 ] && [ "$oct4" -ge 0 ] && [ "$oct4" -le 254 ];
then
  echo "Class B Ip Address Detected!"
#-----------------------------------------
#Class C
elif [ "$oct1" -ge 192 ] && [ "$oct1" -le 223 ] && [ "$oct2" -ge 0 ] && [ "$oct2" -le 254 ] && [ "$oct3" -ge 0 ] && [ "$oct3" -le 254 ] && [ "$oct4" -ge 0 ] && [ "$oct4" -le 254 ];
then
  echo "Class C Ip Address Detected!"
else
  echo "Sorry i have an error! :O"
fi
echo "IP: $IP"
echo "$SubnetMask"
 
