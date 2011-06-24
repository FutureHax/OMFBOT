#!/bin/bash

#Pull in info from config file.
. ~/OMFBOT/OMFBOT_config

#Upload file to FTP
ftp -n -v $HOST << EOT
ascii
user $USER $PASSWD
prompt
cd $REMOTEDIR
lcd ~/Nightly/out/target/product/$DEVICE/
put $ZIP
bye
EOT

#Announce new Nightly build.
ttytter -status="New $DEVICE nightly available http://r2doesinc.bitsurge.net/nightlies/$DEVICE/$ZIP"

#Update device nightly manifests.
pushd ~/OMFBOT/
rm -rf $MANIFESTDIR
git clone $MANIFESTREPO
pushd $MANIFESTDIR
git checkout -b master origin/master
git checkout master
sed -i "1 a\\$MANIFESTENTRY" $DEVICE.js
git add $DEVICE.js
git commit -m "New $DATE nightly for $DEVICE. Via @OMFBOT"
git push
popd
popd

#Take a pause, @OMFBOT doesn't like to tweet in such rapid sucession.
sleep 60

#Announce new build avaialibility in God Mode.
ttytter -status="Grab the new $DEVICE nightly from God Mode!"

pushd ~/Nightly
make clean
popd
