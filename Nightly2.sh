#!/bin/bash

#Clean the build
pushd ~/Nightly
. ../OMFBOT/branch_reset.sh
make clobber
popd

#Pull config from file.
. OMFBOT/OMFBOT_config

#Pull in all new changes, and reset back to HEAD to be sure no testing commits are included.
pushd ~/Nightly
repo forall -c git branch -D  mecha
repo forall -c git reset HEAD --hard
repo sync -f -j9
repo sync -f -j9

#Specify nightly rather than full build.
. vendor/omfgb/build/nightly.sh
popd

#Start builds. These can be reordered.
./OMFBOT/supersonic.sh

./OMFBOT/sholes.sh

#./OMFBOT/desirec.sh

#./OMFBOT/heroc.sh

./OMFBOT/mesmerizemtd.sh

./OMFBOT/showcasemtd.sh

./OMFBOT/pecan.sh

./OMFBOT/vibrantmtd.sh

./OMFBOT/p999.sh

exit

