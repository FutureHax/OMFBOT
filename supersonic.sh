#!/bin/bash

pushd ~/Nightly
. build/envsetup.sh
lunch 7
make otapackage -j$(grep processor /proc/cpuinfo | wc -l)

popd
. OMFBOT/upload.sh

