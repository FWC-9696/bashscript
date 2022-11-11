#!/bin/bash
DATE=`date '+%F_%H:%M:%S'`
mkdir /backup/valheim/$DATE
cp -R /home/$USER/.config/unity3d/IronGate/Valheim/worlds /backup/valheim/$DATE
