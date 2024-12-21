#!/bin/bash
SCRIPTDIR="$(dirname $(readlink -f $0))"
sudo dnf install wget
sudo wget -O /opt/FirefoxSetup.tar.xz "https://download.mozilla.org/?product=firefox-nightly-latest-ssl&os=linux64&lang=en-US"
wait
sudo tar -xf /opt/FirefoxSetup.tar.xz -C /opt
sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox
sudo cp $SCRIPTDIR/firefox-nightly.desktop /usr/local/share/applications -f
