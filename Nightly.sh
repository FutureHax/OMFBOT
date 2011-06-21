#!/bin/bash

DATE=$(date +%m-%d)

ttytter -status="Nightlies for $DATE have started, stay tuned"

pushd ~/OMFGB
#rm -rf *
#repo sync -j99
. vendor/omfgb/build/nightly.sh
popd

./OMFBOT/inc.sh

#./OMFBOT/sholes.sh

./OMFBOT/desirec.sh

./OMFBOT/heroc.sh

