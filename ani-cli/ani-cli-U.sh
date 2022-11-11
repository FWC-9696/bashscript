#!/bin/bash
sudo rm -rf "/usr/local/share/ani-cli" "/usr/local/bin/ani-cli" "/usr/local/bin/UI" /usr/local/bin/player_* #If some of these aren't found, it's not a problem
git clone "https://github.com/pystardust/ani-cli.git" && cd ./ani-cli
sudo cp ./ani-cli /usr/local/bin
cd .. && rm -rf "./ani-cli"
