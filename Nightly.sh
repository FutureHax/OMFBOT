#!/bin/bash
# Put the list of builds to do here. They can be ordered however you like.

#Update the version number
ttytter -status="Nightlies have started, stay tuned."

pushd ~/OMFGB
rm -rf *
repo sync -j99
make clobber
. vendor/omfgb/build/nightly.sh
. build/envsetup.sh
popd

./BuildBot/inc.sh
./BuildBot/sholes.sh
./BuildBot/heroc.sh
./BuildBot/heroc.sh


