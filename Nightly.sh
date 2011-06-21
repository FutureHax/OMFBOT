#!/bin/bash

ttytter -status="Nightlies have started, stay tuned."

pushd ~/OMFGB
rm -rf *
repo sync -j99
. vendor/omfgb/build/nightly.sh
popd

./BuildBot/inc.sh

./BuildBot/sholes.sh

./BuildBot/desirec.sh

./BuildBot/heroc.sh

