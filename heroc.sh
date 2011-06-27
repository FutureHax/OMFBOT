#!/bin/bash

#Pull config from file.
. OMFBOT/OMFBOT_config

pushd ~/Nightly
. build/envsetup.sh
lunch 4
make otapackage -j$(grep processor /proc/cpuinfo | wc -l)

popd
. OMFBOT/upload.sh


