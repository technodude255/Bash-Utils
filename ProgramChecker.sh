# Regular Colors
R='\e[0;31m'          # Red
G='\e[0;32m'        # Green
Y='\e[0;33m'       # Yellow
P='\e[0;35m'       # Purple
C='\e[0;36m'         # Cyan
X='\e[0m'       # Text Reset

echo -e ""$R"Required"$X" "$P"Packages: "$X""$C"${packages[*]}"$X"";sleep 1
echo -e ""$G"Scanning For Packages..."$X"";sleep 1
i=1
checker=0
for package in ${packages[*]}
do
  function isInstalled(){
    if yum list installed "$@" >/dev/null 2>&1
    then
      true
    else
      false
    fi
  }
  if isInstalled $package
  then
    echo -e ""$C"["$X""$Y"$i"$X""$C"]"$X" "$G"Package: "$X""$C"$package"$X" "$G"Is Installed"$X"";sleep 1
    let checker++
  else
    echo -e ""$C"["$X""$Y"$i"$X""$C"]"$X" "$R"Package: "$X""$C"$package"$X" "$R"Is Not Installed"$X"";sleep 1
    echo -e ""$G"Installing Package:"$X" "$C"$package"$X"";sleep 1
    sudo yum -y install $package #>/dev/null
    if [ $? -eq 0 ];
    then
      echo -e ""$G"Command Succeeded"$X""
      let checker++
    else
      echo -e ""$R"Command Failed"$X""
      #if
      echo -e ""$G"Trying Local Install..."$X""
      cd Packages/
      dir=$(ls |grep $package)
      cd $dir
      fullname=$(ls |grep $package)
      sudo yum -y localinstall $fullname
      if [ $? -eq 0 ];
      then
	echo -e ""$G"Command Succeeded"$X""
	let checker++
	cd ..
      else
	echo -e ""$R"Command Failed"$X""
	echo -e ""$R"CRITICAL ERROR"$X""
	echo -e ""$C"Please Contact Your Local"$X" "$C"Administrator!"$X""
	cd ..
      fi
    fi
  fi
  let i++
done

sleep 1000000000000