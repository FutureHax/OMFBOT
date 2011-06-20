#!/bin/bash

pushd ~/OMFGB
lunch 3
make otapackage -j$(grep processor /proc/cpuinfo | wc -l)

popd
. BuildBot/upload.sh

