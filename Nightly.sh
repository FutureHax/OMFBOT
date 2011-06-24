#!/bin/bash

#Announce the beginning of nightlies.
ttytter -status="Nightlies for $DATE have started, stay tuned"

#Pull config from file.
. OMFBOT/OMFBOT_config

#Pull in all new changes, and reset back to HEAD to be sure no testing commits are included.
pushd ~/Nightly
repo forall -c git pull origin master
repo forall -c git pull korg gingerbread-release
repo forall -c git pull cm gingerbread
repo forall -c git reset HEAD --hard

#Specify nightly rather than full build.
. vendor/omfgb/build/nightly.sh
popd

#Start builds. These can be reordered.
./OMFBOT/inc.sh

./OMFBOT/sholes.sh

./OMFBOT/desirec.sh

./OMFBOT/heroc.sh

exit

