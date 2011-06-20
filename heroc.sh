#!/bin/bash

pushd ~/OMFGB
. build/envsetup.sh
lunch 4
make otapackage -j$(grep processor /proc/cpuinfo | wc -l)

popd
. BuildBot/upload.sh


