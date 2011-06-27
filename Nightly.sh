#!/bin/bash

#Pull config from file.
. OMFBOT/OMFBOT_config

#Announce the beginning of nightlies.
ttytter -status="Nightlies for $DATE have started, stay tuned"

#Pull in all new changes, and reset back to HEAD to be sure no testing commits are included.
pushd $BUILDDIR
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

