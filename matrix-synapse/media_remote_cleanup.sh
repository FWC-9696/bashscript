#!/bin/bash
echo "Cleaning up Matrix remote content that is unchanged for the last 200 days...may delete remote pofile pictures...[Enter] to execute."
read
sudo find /var/lib/matrix-synapse/media/remote_content/ -type f -mtime +200 -exec rm -f {} \;
sudo find /var/lib/matrix-synapse/media/remote_content/ -type d -empty -delete
