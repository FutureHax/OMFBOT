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
repo sync -j9

#Setup mecha branches
pushd frameworks/base/
git checkout -b mecha origin/mecha
git pull origin mecha
git checkout -b master origin/master
git checkout master
popd

pushd packages/apps/God_Mode
git checkout -b mecha origin/mecha
git pull origin mecha
git checkout -b master origin/master
git checkout master
popd

pushd system/core/
git checkout -b mecha origin/mecha
git pull origin mecha
git checkout -b master origin/master
git checkout master
popd

pushd system/netd/
git checkout -b mecha origin/mecha
git pull origin mecha
git checkout -b master origin/master
git checkout master
popd

pushd packages/apps/Phone/
git checkout -b mecha origin/mecha
git checkout -b master origin/master
git checkout master
popd

pushd packages/apps/Settings/
git checkout -b mecha origin/mecha
git pull origin mecha
git checkout -b master origin/master
git checkout master
popd

pushd packages/apps/Stk/
git checkout -b mecha origin/mecha
git pull origin mecha
git checkout -b master origin/master
git checkout master
popd

pushd packages/providers/TelephonyProvider/
git checkout -b mecha origin/mecha
git pull origin mecha
git checkout -b master origin/master
git checkout master
popd

#Specify nightly rather than full build.
. vendor/omfgb/build/nightly.sh
popd

#Start builds. These can be reordered.
./OMFBOT/fascinatemtd.sh

./OMFBOT/mecha.sh

./OMFBOT/shadow.sh

./OMFBOT/inc.sh

./OMFBOT/vivow.sh

./OMFBOT/supersonic.sh

./OMFBOT/sholes.sh

./OMFBOT/desirec.sh

./OMFBOT/heroc.sh

./OMFBOT/mesmerizemtd.sh

./OMFBOT/showcasemtd.sh

./OMFBOT/vibrantmtd.sh

exit

