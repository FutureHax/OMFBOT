#!/bin/bash

ttytter -status="Nightlies have started, stay tuned."

pushd ~/$ROM
rm -rf *
repo sync -j40
. vendor/omfgb/build/nightly.sh
popd

./BuildBot/inc.sh

./BuildBot/sholes.sh

./BuildBot/heroc.sh

./BuildBot/heroc.sh

