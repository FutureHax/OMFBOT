#!/bin/bash

ttytter -status="Nightlies for $DATE have started, stay tuned"

. OMFBOT/OMFBOT_config

echo "$DATE"

pushd ~/Nightly
repo forall -c git reset HEAD --hard
. vendor/omfgb/build/nightly.sh
popd

./OMFBOT/inc.sh

./OMFBOT/sholes.sh

./OMFBOT/desirec.sh

./OMFBOT/heroc.sh

exit

