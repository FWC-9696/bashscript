#! /bin/bash
source ${HOME}/.bashrc

cd /etc/mx-puppet-discord
export NODE_ENV=development
npm run start
