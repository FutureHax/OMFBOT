#!/bin/bash

. ~/OMFBOT/OMFBOT_config

ftp -n -v $HOST << EOT
ascii
user $USER $PASSWD
prompt
cd $REMOTEDIR
lcd ~/Nightly/out/target/product/$DEVICE/
put $ZIP
bye
EOT

pushd ~/Nightly
make clobber
popd

ttytter -status="New $DEVICE nightly available http://r2doesinc.bitsurge.net/nightlies/$DEVICE/$ZIP"
