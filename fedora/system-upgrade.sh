#!/bin/bash
SCRIPTDIR="$(dirname $(readlink -f $0))"
#$SCRIPTDIR/update.sh
sudo dnf install gnome-software dnf-utils -y
sudo dnf upgrade --refresh
#(gnome-software --autoupdate --mode=updates &)
echo ""
echo "WARNING: IF NOT DONE YET, YOU MUST REBOOT THE SYSTEM NOW"
echo "Continue WITHOUT Rebooting? [y/n]"
read continue
if [ "$continue" != "y" ]; then
    exit
fi
echo ""
echo "Your Current Fedora Version is:"
$SCRIPTDIR/../version.sh
while :
do
	echo "Which Fedora Version to Upgrade to? (Input a Number or 'rawhide')"
	read new_version
	echo ""
	echo "Install Fedora $new_version? [y/n]"
	read continue
		if [ "$continue" = "y" ]; then
			break
		fi
echo ""
done
echo ""
echo "Installing Fedora $new_version..."
echo ""
echo "The GPG Key Webpage link is below." 
echo "Keep this open for later."
echo ""
sleep 3
echo "https://getfedora.org/security"
echo ""
echo 'Note: "dnf upgrade --refresh" has alredy been run!'
sudo dnf system-upgrade download --releasever=$new_version --allowerasing
echo ""
echo 'Any key: reboot to finish the upgrade'
read continue
sudo dnf system-upgrade reboot
