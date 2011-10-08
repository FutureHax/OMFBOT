#!/bin/bash

pushd ~/Nightly

pushd packages/apps/God_Mode/
git checkout mecha
popd

pushd frameworks/base/
git checkout mecha
popd

pushd system/core/
git checkout mecha
popd

pushd system/netd/
git checkout mecha
popd

pushd packages/apps/Phone/
git checkout mecha
popd

pushd packages/apps/Settings/
git checkout mecha
popd

pushd packages/apps/Stk/
git checkout mecha
popd

pushd packages/providers/TelephonyProvider/
git checkout mecha
popd

. build/envsetup.sh
lunch 6
make otapackage -j$(grep processor /proc/cpuinfo | wc -l)

. ../OMFBOT/branch_reset.sh

popd
. OMFBOT/upload.sh


