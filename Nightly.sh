#!/bin/bash

#Pull config from file.
. OMFBOT/OMFBOT_config

#Announce the beginning of nightlies.
ttytter -status="Nightlies for $DATE have started, stay tuned"

#Setup mecha branches
pushd ~/Nightly

pushd bionic/
git checkout -b mecha origin/mecha
git checkout master
popd

pushd frameworks/base/
git checkout -b mecha origin/mecha
git checkout master
popd

pushd system/core/
git checkout -b mecha origin/mecha
git checkout master
popd

pushd system/netd/
git checkout -b mecha origin/mecha
git checkout master
popd

pushd packages/apps/Phone/
git checkout -b mecha origin/mecha
git checkout master
popd

pushd packages/apps/Settings/
git checkout -b mecha origin/mecha
git checkout master
popd

pushd packages/apps/Stk/
git checkout -b mecha origin/mecha
git checkout master
popd

pushd packages/providers/TelephonyProviders/
git checkout -b mecha origin/mecha
git checkout master
popd

#Pull in all new changes, and reset back to HEAD to be sure no testing commits are included.
repo forall -c git reset HEAD --hard
repo sync -j99

#Specify nightly rather than full build.
. vendor/omfgb/build/nightly.sh
popd

#Start builds. These can be reordered.
./OMFBOT/inc.sh

./OMFBOT/sholes.sh

./OMFBOT/desirec.sh

./OMFBOT/heroc.sh

exit

