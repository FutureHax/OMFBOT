#!/bin/bash

#Clean the build
pushd ~/Nightly
. ../OMFBOT/branch_reset.sh
make clobber
popd

#Pull config from file.
. OMFBOT/OMFBOT_config

#Announce the beginning of nightlies.
ttytter -status="Nightlies for $DATE have started, stay tuned"
pushd ~/Nightly

#Pull in all new changes, and reset back to HEAD to be sure no testing commits are included.
repo forall -c git branch -D  mecha
repo forall -c git reset HEAD --hard
repo sync -j99

#Setup sholes branch
pushd build/
git checkout -b sholes origin/sholes
git checkout -b master origin/master
git checkout master
popd

#Setup mecha branches
pushd bionic/
git checkout -b mecha origin/mecha
git checkout -b master origin/master
git checkout master
popd

pushd frameworks/base/
git checkout -b mecha origin/mecha
git checkout -b master origin/master
git checkout master
popd

pushd system/core/
git checkout -b mecha origin/mecha
git checkout -b master origin/master
git checkout master
popd

pushd system/netd/
git checkout -b mecha origin/mecha
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
git checkout -b master origin/master
git checkout master
popd

pushd packages/apps/Stk/
git checkout -b mecha origin/mecha
git checkout -b master origin/master
git checkout master
popd

pushd packages/providers/TelephonyProvider/
git checkout -b mecha origin/mecha
git checkout -b master origin/master
git checkout master
popd

#Specify nightly rather than full build.
. vendor/omfgb/build/nightly.sh
popd

#Start builds. These can be reordered.
./OMFBOT/inc.sh

./OMFBOT/mecha.sh

./OMFBOT/supersonic.sh

./OMFBOT/sholes.sh

./OMFBOT/desirec.sh

./OMFBOT/heroc.sh

exit

