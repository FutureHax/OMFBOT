#!/bin/bash

pushd ~/OMFGB
make clobber
lunch 4
make otapackage -j$(grep processor /proc/cpuinfo | wc -l)

popd
. BuildBot/upload.sh


