#!/bin/bash

pushd ~/OMFGB
make clobber
lunch 7
make otapackage -j$(grep processor /proc/cpuinfo | wc -l)

popd
. BuildBot/upload.sh

