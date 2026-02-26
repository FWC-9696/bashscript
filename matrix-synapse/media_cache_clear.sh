echo "Input Bearer Token"
read token
echo "Input Site Name"
read site

curl -X POST -H "Authorization: Bearer $token" -H "Content-Type: application/json" "https://$site:8448/_synapse/admin/v1/purge_media_cache?before_ts=99999999999999999999999"
