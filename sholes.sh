#!/bin/bash

#Pull config from file.
. OMFBOT/OMFBOT_config

pushd ~/Nightly/
pushd ./build/
git checkout sholes
popd
. build/envsetup.sh
lunch 7
make otapackage -j$(grep processor /proc/cpuinfo | wc -l)
pushd ./build/
git checkout master
popd

popd
. OMFBOT/upload.sh

