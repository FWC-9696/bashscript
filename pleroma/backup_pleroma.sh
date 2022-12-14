#!/bin/bash
DATE=`date '+%F_%H:%M:%S'`
sudo -Hu postgres mkdir -p /backup/pleroma/$DATE
systemctl stop pleroma
sudo -Hu postgres pg_dump -d pleroma --format=custom -f /backup/pleroma/$DATE/pleroma.pgdump
systemctl start pleroma
cp -R /etc/pleroma/ /backup/pleroma/$DATE/
cp -R /var/lib/pleroma/uploads /backup/pleroma/uploads
cp -R /var/lib/pleroma/static/static /backup/pleroma/static
cp -R /var/lib/pleroma/static/emoji/ /backup/pleroma/emoji

