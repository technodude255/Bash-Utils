#!/bin/bash
#===================================================================="
# Regular Colors
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
Color_Off='\e[0m'       # Text Reset
#===================================================================="
echo -e "$Cyan""Welcome To The "$Color_Off""$Green"Secure"$Color_Off" "$Cyan"Password Generator""$Color_Off" 
echo -e "$Purple""Please Specify The Character Length""$Color_Off"
echo -e "[#]>| \c"
read Length1
if [[ "$Length1" -lt "8" ]];
then
  echo -e "$Red""Your Password Length Is Too Short""$Color_Off"
  echo -e "$Red""Try Something Longer Than 7 Characters""$Color_Off"		
elif [[ "$Length1" -gt "255" ]];
then
  echo -e "$Red""Your Password Length Is Too Long""$Color_Off"
  echo -e "$Red""Try Something Shorter Than 255 Characters""$Color_Off";sleep 3
else
  random=`< /dev/urandom tr -dc 'a-zA-Z0-9-_!@#$%^&*()_+{}|:<>?=' | head -c${1:-$Length1}`
  echo -e "$Purple""Okay, Generating Your "$Cyan""[$Length1]""$Color_Off" "$Purple"Length "$Color_Off""$Green"Secure"$Color_Off"$Purple"" Password""$Color_Off"
  echo -ne "$Green""Secure"$Color_Off" "$Cyan"Password:$Color_Off"
  echo -e "$Cyan""$random""$Color_Off"   
fi