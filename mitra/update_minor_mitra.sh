#!/bin/bash
echo ""
mitractl --version > currentv.txt 
$(cat currentv.txt | cut -d " " -f 2 > cv.txt)
current_version=$(cat cv.txt)
current_version_major=$(cat cv.txt | cut -d "." -f 1)
echo "Current major version is $current_version_major"

release_url="https://codeberg.org/silverpill/mitra/releases"
latest_release= curl -Ls -o /dev/null -w %{url_effective} $release_url/latest > latesturl.txt 
cat latesturl.txt | rev | cut -d "/" -f 1 | rev > latestv.txt 
cat latestv.txt | cut -d "v" -f 2 > v.txt
latest_version=$(cat latestv.txt)
version=$(cat v.txt)
latest_version_major=$(cat v.txt | cut -d "." -f 1)
echo "Latest major version is $latest_version_major"

rm currentv.txt cv.txt latesturl.txt latestv.txt v.txt

if [ "$latest_version_major" != "$current_version_major" ]; then 
	echo "" & echo "Cannot Upgrade Mitra $current_version to Mitra $version, as major version upgrades may require special steps!" & echo "" & exit
	else echo "OK"
fi


echo ""
echo "Update Mitra $current_version to Mitra $version? [Any Key to Continue]"
read continue

#sudo systemctl stop mitra
#wait

mkdir -p /opt/mitra/update
downloadurl="$release_url/download/$latest_version/mitra_$version"
downloadurl=$downloadurl"_amd64.deb"
echo $downloadurl
curl $downloadurl -o /opt/mitra/update/mitra.deb

#dpkg -i /opt/mitra/update/mitra.deb
#wait
#sudo systemctl start mitra
