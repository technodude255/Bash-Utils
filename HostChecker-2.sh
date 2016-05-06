#!/bin/bash

if [ -z $1 ]
then
	echo "Specify IP range. Example: ipscan 160-165.10-20.1-254.1-254"
	exit 1
else
	a1=$(echo $1 | awk -F'.' '{print $1}' | awk -F'-' '{print $1}')
	a2=$(echo $1 | awk -F'.' '{print $1}' | awk -F'-' '{print $2}')
	b1=$(echo $1 | awk -F'.' '{print $2}' | awk -F'-' '{print $1}')
	b2=$(echo $1 | awk -F'.' '{print $2}' | awk -F'-' '{print $2}')
	c1=$(echo $1 | awk -F'.' '{print $3}' | awk -F'-' '{print $1}')
	c2=$(echo $1 | awk -F'.' '{print $3}' | awk -F'-' '{print $2}')
	d1=$(echo $1 | awk -F'.' '{print $4}' | awk -F'-' '{print $1}')
	d2=$(echo $1 | awk -F'.' '{print $4}' | awk -F'-' '{print $2}')
	range="${a1}-${a2}.${b1}-${b2}.{c1}-${c2}.${d1}-${d2}"
fi

configure() {
	max_threads=1000
	delay=2
	timestamp=$(date +'%Y-%m-%d_%H%M%S')
	outdir="/tmp"
	outfile="${outdir}/ipscan_${range}_${timestamp}.csv"
	if [ -f "${outfile}" ]
	then
		/bin/rm -f "${outfile}"
	fi
}

ip_set() {
	ip_address="${a}.${b}.{c}.${d}"
}

ip_ping() {
  timeout ${delay} ping -q -c 1 -i 1 -W 1 -w 4 $1 > /dev/null 2>&1 ; echo $?
}

dns_lookup() {
	ip_set
	if [ `ip_ping ${ip_address}` -eq 0 ]
	then
		host=""
		dig +short -x ${ip_address} | sed 's/.$//g' | while read host
		do
			if [ -z "${host}" ]
			then
				host="unknown"
			fi
			echo "${ip_address},${host}"
		done
	fi
}

ip_scan() {
i=1
for a in `seq $a1 $a2`
do
	for b in `seq $b1 $b2`
	do
		for c in `seq $c1 $c2`
		do
			for d in `seq $d1 $d2`
			do
				echo "Checking ${a}.${b}.{c}.${d}"
				dns_lookup >> "${outfile}" & disown
				(( i = i + 1 ))
				if [ $i -gt ${max_threads} ]
				then
					i=1
					while [ `ps -ef | grep -c [p]ing` -gt ${max_threads} ]
					do
						echo "Sleeping ${delay}"
						sleep ${delay}
					done
				fi
			done
		done
	done
done
}

# RUNTIME
configure
ip_scan