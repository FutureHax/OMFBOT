#!/bin/bash

pushd ~/Nightly

pushd bionic/
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

pushd packages/providers/TelephonyProviders/
git checkout mecha
popd

. build/envsetup.sh
lunch 6
make otapackage -j$(grep processor /proc/cpuinfo | wc -l)

pushd bionic/
git checkout master
popd

pushd frameworks/base/
git checkout master
popd

pushd system/core/
git checkout master
popd

pushd system/netd/
git checkout master
popd

pushd packages/apps/Phone/
git checkout master
popd

pushd packages/apps/Settings/
git checkout master
popd

pushd packages/apps/Stk/
git checkout master
popd

pushd packages/providers/TelephonyProviders/
git checkout master
popd

popd
. OMFBOT/upload.sh


