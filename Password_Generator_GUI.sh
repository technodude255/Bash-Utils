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
Color_Off='\e[0m'       # Text Reset
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
echo -e "|$Green""0010100111010001001010101010001001010100""$Color_Off|"
echo "|========================================|"
echo -e "|"$On_Blue"[3 / 14 / 2015]"$Color_Off"		         |"
echo -e "|$Cyan""Welcome To The "$Color_Off""$Green"Secure"$Color_Off" "$Cyan"Password Generator""$Color_Off|" 
echo -e "|		              "$On_Blue"By: Jesse.G"$Color_Off"|"
echo "|========================================|"
echo -e "|$Green""1010001010100010101010100010101101010110""$Color_Off|"
echo "|========================================|"

while [[ "1" == "1" ]];
do
	  echo "|                                        |"
      echo -e "|$Purple""Please Specify The Character Length""$Color_Off     |"
      echo "|========================================|"
      echo
      echo -e ">| \c"
      read Length1
      if [[ "$Length1" -lt "6" ]] || [[ "$Length1" -eq "6" ]];
      then
	    echo "|========================================|"
		echo -e "|$Red""Your Password Length Is Too Short""$Color_Off       |"
	    echo -e "|$Red""Try Something Longer Than 6 Characters""$Color_Off  |"
		echo "|----------------------------------------|"
	    echo -e "|$Red""Exiting Program""$Color_Off                         |"
	    echo "|========================================|"
		echo -ne "$On_Blue"'[          ](0%)\r';sleep 1;echo -ne '[==        ](20%)\r';sleep 1;echo -ne '[====      ](40%)\r';sleep 1;echo -ne '[======    ](60%)\r';sleep 1;echo -ne '[========  ](80%)\r';sleep 1;echo -ne '[==========](100%)\r'"$Color_Off";exit
      elif [[ "$Length1" -gt "255" ]] || [[ "$Length1" -eq "255" ]];
      then
	    echo "|======================================== |"
		echo -e "$Red""|Your Password Length Is Too Long""$Color_Off         |"
	    echo -e "$Red""|Try Something Shorter Than 255 Characters""$Color_Off|"
		echo "|---------------------------------------- |"
	    echo -e "$Red""|Exiting Program""$Color_Off		          |"
	    echo "|======================================== |"
		echo -ne "$On_Blue"'[          ](0%)\r';sleep 1;echo -ne '[==        ](20%)\r';sleep 1;echo -ne '[====      ](40%)\r';sleep 1;echo -ne '[======    ](60%)\r';sleep 1;echo -ne '[========  ](80%)\r';sleep 1;echo -ne '[==========](100%)\r'"$Color_Off";exit
      elif [[ "$Length1" -eq "7" ]] || [[ "$Length1" -gt "7" ]];
      then
	    #random=`date +%s | sha256sum | base64 | head -c "$Length1"`
	    #random=`< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-32}`
	    #random=`openssl rand -base64 32`
	    #random=`tr -cd '[:alnum:]' < /dev/urandom | fold -w30 | head -n1`
	    #random=`strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 30 | tr -d '\n'`
	    #random=`< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c6`
	    #random=`dd if=/dev/urandom bs=1 count=32 2>/dev/null | base64 -w 0 | rev | cut -b 2- | rev`
	    #random=`</dev/urandom tr -dc '12345!@#$%qwertQWERTasdfgASDFGzxcvbZXCVB' | head -c8`
	    #random=`randpw() < /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-16}`
	    #random=`date | md5sum`
	    random=`< /dev/urandom tr -dc 'a-zA-Z0-9-_!@#$%^&*()_+{}|:<>?=' | head -c${1:-$Length1}`
	    echo "|========================================|"
	    echo -e "|$Purple""Okay, Generating Your "$Cyan""[$Length1]""$Color_Off" "$Purple"Length "$Color_Off"""$Green"Secure"$Color_Off|"
	    echo -e "|$Purple""Password""$Color_Off                                |" 
	    echo "|========================================|"
		echo -ne "$On_Blue"'[          ](0%)\r';sleep 1;echo -ne '[==        ](20%)\r';sleep 1;echo -ne '[====      ](40%)\r';sleep 1;echo -ne '[======    ](60%)\r';sleep 1;echo -ne '[========  ](80%)\r';sleep 1;echo -ne '[==========](100%)\r'"$Color_Off"
		echo
		echo -ne '\n'
	    echo -ne "$Green""Secure"$Color_Off" "$Cyan"Password:$Color_Off"
		echo -ne '\n'
		echo
	    echo -e "$Cyan""$random""$Color_Off"   
      else
	    echo "========================================"
	    echo -e "$Red""HTTP Error 404 - File or Directory not found""$Color_Off"
	    echo "========================================" 
	    echo -e "$Red""Exiting Program""$Color_Off"
	    echo "========================================"
		echo -ne "$On_Blue"'[          ](0%)\r';sleep 1;echo -ne '[==        ](20%)\r';sleep 1;echo -ne '[====      ](40%)\r';sleep 1;echo -ne '[======    ](60%)\r';sleep 1;echo -ne '[========  ](80%)\r';sleep 1;echo -ne '[==========](100%)\r'"$Color_Off";exit
      fi
	 #===================================================================="

	 #===================================================================="
      echo "|========================================|"
      echo -e "|$Purple""Would You Like To Continue?""$Color_Off             |" 
      echo "|========================================|"
      echo
      echo -e "[y/n]>| \c"
      read Choice1
      if [[ "$Choice1" == "y" ]] || [[ "$Choice1" == "Y" ]] || [[ "$Choice1" == "yes" ]] || [[ "$Choice1" == "YES" ]];
      then
	    echo "|========================================|"
	    echo -e "|$Purple""Lets Start Over""$Color_Off                         |" 
	    echo "|========================================|"
      elif [[ "$Choice1" == "n" ]] || [[ "$Choice1" == "N" ]] || [[ "$Choice1" == "no" ]] || [[ "$Choice1" == "NO" ]];
      then
	    echo "========================================"
	    echo -e "$Red""Exiting Program""$Color_Off"
	    echo "========================================"
		echo -ne "$On_Blue"'[          ](0%)\r';sleep 1;echo -ne '[==        ](20%)\r';sleep 1;echo -ne '[====      ](40%)\r';sleep 1;echo -ne '[======    ](60%)\r';sleep 1;echo -ne '[========  ](80%)\r';sleep 1;echo -ne '[==========](100%)\r'"$Color_Off";exit
      else
	    echo "========================================"
	    echo -e "$Red""HTTP Error 404 - File or Directory not found""$Color_Off"
	    echo "========================================"
	    echo -e "$Red""Exiting Program""$Color_Off"
	    echo "========================================"
		echo -ne "$On_Blue"'[          ](0%)\r';sleep 1;echo -ne '[==        ](20%)\r';sleep 1;echo -ne '[====      ](40%)\r';sleep 1;echo -ne '[======    ](60%)\r';sleep 1;echo -ne '[========  ](80%)\r';sleep 1;echo -ne '[==========](100%)\r'"$Color_Off";exit
      fi
done