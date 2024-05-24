#!/bin/bash
DATE=`date '+%F_%H:%M:%S'`
DIR=/backup/pleroma
#sudo -Hu postgres mkdir -p $DIR/$DATE

#echo 'Stopping Pleroma for Backup'
#systemctl stop pleroma

#OLD PLEROMA DATABASE DUMP METHOD
#sudo -Hu postgres pg_dump -d pleroma --format=custom -f /backup/pleroma/pleroma.pgdump
#Can cause issues importing, see https://gitlab.com/-/snippets/2228488

#NEW PLEROMA DATABASE DUMP METHOD
#echo 'Dumping Schema...'
#sudo -Hu postgres pg_dump -s -v pleroma -f $DIR/$DATE/pleroma-schema.psql
#echo 'Dumping Data...'
#sudo -Hu postgres pg_dump -a -v --disable-triggers pleroma -f $DIR/$DATE/pleroma-data.psql

#This is the way to restore the PG Dumps:
#psql -v ON_ERROR_STOP=1 -d pleroma -U postgres -a -f pleroma-schema.psql
#psql -v ON_ERROR_STOP=1 -d pleroma -U pleroma -a -f pleroma-data.psql

echo 'Copying config.exs'
cp -R /etc/pleroma/config.exs $DIR
echo 'Copying Static Directory'
cp -R /var/lib/pleroma/static $DIR
#echo 'Copying Uploads'
#cp -R -upv /var/lib/pleroma/uploads $DIR
#echo 'Done'

#echo 'Restarting Pleroma'
#systemctl start pleroma


