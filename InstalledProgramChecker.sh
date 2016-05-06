#!/bin/bash
R='\e[0;31m'        # Red
G='\e[0;32m'        # Green
Y='\e[0;33m'        # Yellow
P='\e[0;35m'        # Purple
C='\e[0;36m'        # Cyan
X='\e[0m'           # Text Reset
clear
packages=()
echo -e ""$R"Required Packages:"$X""$C"${packages[*]}"$X"";sleep 5
for package in ${packages[*]}
do
  function isInstalled {
    if yum list installed "$@" >/dev/null 2>&1
    then
      true
    else
      false
    fi
  }
  if isInstalled $package
  then
    echo -e ""$C"$package"$X" "$G"Is Installed"$X"";sleep 1
  else
    echo -e ""$C"$package"$X" "$R"Is Not Installed"$X"";sleep 1
    echo -e ""$G"Installing Package:"$X" "$C"$package"$X"";sleep 1
    sudo yum -y install $package #>/dev/null
  fi
done