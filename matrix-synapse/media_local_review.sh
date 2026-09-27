#!/usr/bin/env bash

TARGET_DIR="/tmp/matrix_gallery"
MEDIA_ROOT="/var/lib/matrix-synapse/media/local_content"

mkdir -p "$TARGET_DIR"

# Query PostgreSQL for local media and map to filesystem path
# Assumes default postgres db 'synapse' and user 'synapse'
sudo -u postgres psql -d synapse -t -A -F"," -c \
  "SELECT media_id, upload_name FROM local_media_repository WHERE upload_name IS NOT NULL;" | \
while IFS=',' read -r media_id upload_name; do

    # Synapse sharding structure: local_content/aa/bb/cccccccc...
    sub1="${media_id:0:2}"
    sub2="${media_id:2:2}"
    rest="${media_id:4}"

    src_file="${MEDIA_ROOT}/${sub1}/${sub2}/${rest}"

    # Sanitize filename (replace spaces/special chars)
    safe_name=$(echo "$upload_name" | tr -s ' ' '_')
    dest_file="${TARGET_DIR}/${media_id}_${safe_name}"

    if [ -f "$src_file" ] && [ ! -e "$dest_file" ]; then
        ln -s "$src_file" "$dest_file"
    fi
done

echo "Symlinks created in $TARGET_DIR"