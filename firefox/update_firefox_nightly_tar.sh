#!/bin/bash
sudo wget -O /opt/FirefoxSetup.tar.bz2 "https://download.mozilla.org/?product=firefox-nightly-latest-ssl&os=linux64&lang=en-US"
wait
sudo tar xjf /opt/FirefoxSetup.tar.bz2 -C /opt
firefox
