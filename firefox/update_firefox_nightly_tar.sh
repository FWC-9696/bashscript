#!/bin/bash
sudo wget -O /opt/FirefoxSetup.tar.xz "https://download.mozilla.org/?product=firefox-nightly-latest-ssl&os=linux64&lang=en-US"
wait
sudo tar -xf /opt/FirefoxSetup.tar.xz -C /opt
firefox
