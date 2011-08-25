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
if [ ! -z $DEVICE ]
then
ttytter -status="New $DEVICE nightly available http://r2doesinc.bitsurge.net/nightlies/$DEVICE/$ZIP"
ttytter -status="Md5 for $ZIP : $MD5 "
else
ttytter -status="Bot errored. Blame @xoomdev $RANDOM times."
fi

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

cd ~/

pushd ~/Nightly
make clean
popd
