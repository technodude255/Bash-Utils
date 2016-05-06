#!/bin/bash

function pause(){
  local message="$@"
  [ -z $message ] && message="Press [Enter] key to continue..."
  read -p "$message" readEnterKey
}

# Purpose - Get info about your operating system
LSB=/usr/bin/lsb_release
echo "Operating system : $(uname)"
[ -x $LSB ] && $LSB -a || echo "$LSB command is not insalled (set \$LSB variable)"
pause

# Purpose - Get info about host such as dns, IP, and hostname
dnsips=$(sed -e '/^$/d' /etc/resolv.conf | awk '{if (tolower($1)=="nameserver") print $2}')
echo "Hostname and DNS information"
echo "Hostname : $(hostname -s)"
echo "DNS domain : $(hostname -d)"
echo "Fully qualified domain name : $(hostname -f)"
echo "Network address (IP) :  $(hostname -i)"
echo "DNS name servers (DNS IP) : ${dnsips}"
pause

# Purpose - Network inferface and routing info
devices=$(netstat -i | cut -d" " -f1 | egrep -v "^Kernel|Iface|lo")
echo "Network information"
echo "Total network interfaces found : $(wc -w <<<${devices})"
echo "IP Addresses Information"
ip -4 address show
echo "Network routing"
netstat -nr
echo "Interface traffic information"
netstat -i
pause

# Purpose - Display a list of users currently logged on 
who
pause

# Purpose - Display used and free memory info
echo "Free and used memory"
free -m
echo "Virtual memory statistics"
vmstat
echo "Top 5 memory eating process"
ps auxf | sort -nr -k 4 | head -5	
pause


















exit
USERNAME=$(id -un)
UID=$(id -u)
PRIMARYGROUP=$(id -gn)
PRIMARYGID=$(id -g)
GROUPLIST=$(id -Gn)
GIDLIST=$(id -G)

echo "$USERNAME"
echo "$UID"
echo "$PRIMARYGROUP"
echo "$PRIMARYGID"
echo "$GROUPLIST"
echo "$GIDLIST"
