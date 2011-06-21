#!/bin/bash

USER=""
PASSWD=""
HOST="r2doesinc.bitsurge.net"
UPLOADFILE=$(find ~/OMFGB/out/target/product/ -maxdepth 2 -name 'OMFGB_*.zip')
TMP=${UPLOADFILE#*/OMFGB_}
DEVICE=${TMP%-1.3.0_nightly-*.zip}
ZIP=${UPLOADFILE##*/}
REMOTEDIR="r2doesinc.bitsurge.net/nightlies/$DEVICE/"

ftp -n -v $HOST << EOT
ascii
user $USER $PASSWD
prompt
cd $REMOTEDIR
lcd ~/OMFGB/out/target/product/$DEVICE/
put $ZIP
bye
EOT

pushd ~/OMFGB
make clobber
popd

ttytter -status="New $DEVICE nightly available http://r2doesinc.bitsurge.net/nightlies/$DEVICE/$ZIP"
