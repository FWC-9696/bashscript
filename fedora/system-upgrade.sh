#!/bin/bash
SCRIPTDIR="$(dirname $(readlink -f $0))"
$SCRIPTDIR/update.sh
sudo dnf install gnome-software dnf-utils -y
sudo dnf upgrade --refresh
#(gnome-software --autoupdate --mode=updates &)
echo ""
echo "WARNING: IF NOT DONE YET, YOU MUST REBOOT THE SYSTEM NOW"
echo "Continue without reboot? [y/n]"
read continue
if [ "$continue" != "y" ]; then
    exit
fi
echo "Your Current Fedora Version is:"
$SCRIPTDIR/../version.sh
echo "Which Fedora Version to Upgrade to? (Input a Number or 'rawhide')"
read new_version
echo ""
echo "You input $new_version. Is that correct? [y/n]"
read continue
if [ "$continue" != "y" ]; then
    exit
fi
echo ""
echo "Installing Fedora $new_version"
sudo dnf system-upgrade download --releasever=$new_version --allowerasing
sudo dnf system-upgrade reboot
