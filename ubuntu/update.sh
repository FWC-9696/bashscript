#!/bin/bash
SCRIPTDIR="$(dirname $(readlink -f $0))"
sudo apt install lsb-release -y
while :
	do
	DATE=`date '+%F %H:%M:%S'`
	sudo apt update && sudo apt upgrade -y
	echo ""
	flatpak update -y

	$SCRIPTDIR/../version.sh

	if [ -f /var/run/reboot-required ]; then
		echo "***REBOOT IS REQUIRED FOR THE FOLLOWING PACKAGES***"	
		cat /var/run/reboot-required.pkgs
  		echo ""
	fi

	echo "***UPDATED ON $DATE***"
	echo ""
	echo "********************************************************************************"
	#echo "Press any key to check again."
	#read -t 3600
	sleep 3600
done
