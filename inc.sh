#!/bin/bash

pushd ~/OMFGB
. build/envsetup.sh
lunch 5
make otapackage -j$(grep processor /proc/cpuinfo | wc -l)

popd
. OMFBOT/upload.sh

