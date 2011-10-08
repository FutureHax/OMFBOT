#!/bin/bash

pushd frameworks/base/
git reset HEAD --hard ; git checkout -b tmp ; git checkout tmp ; git branch -D master ; git branch -D mecha ; git checkout -b master origin/master ; git checkout -b mecha origin/mecha ; git checkout masterpopd

pushd system/core/
git reset HEAD --hard ; git checkout -b tmp ; git checkout tmp ; git branch -D master ; git branch -D mecha ; git checkout -b master origin/master ; git checkout -b mecha origin/mecha ; git checkout master
popd

pushd packages/apps/God_Mode/
git reset HEAD --hard ; git checkout -b tmp ; git checkout tmp ; git branch -D master ; git branch -D mecha ; git checkout -b master origin/master ; git checkout -b mecha origin/mecha ; git checkout master
popd

pushd system/netd/
git reset HEAD --hard ; git checkout -b tmp ; git checkout tmp ; git branch -D master ; git branch -D mecha ; git checkout -b master origin/master ; git checkout -b mecha origin/mecha ; git checkout master
popd

pushd packages/apps/Phone/
git reset HEAD --hard ; git checkout -b tmp ; git checkout tmp ; git branch -D master ; git branch -D mecha ; git checkout -b master origin/master ; git checkout -b mecha origin/mecha ; git checkout master
popd

pushd packages/apps/Settings/
git reset HEAD --hard ; git checkout -b tmp ; git checkout tmp ; git branch -D master ; git branch -D mecha ; git checkout -b master origin/master ; git checkout -b mecha origin/mecha ; git checkout master
popd

pushd packages/apps/Stk/
git reset HEAD --hard ; git checkout -b tmp ; git checkout tmp ; git branch -D master ; git branch -D mecha ; git checkout -b master origin/master ; git checkout -b mecha origin/mecha ; git checkout master
popd

pushd packages/providers/TelephonyProvider/
git reset HEAD --hard ; git checkout -b tmp ; git checkout tmp ; git branch -D master ; git branch -D mecha ; git checkout -b master origin/master ; git checkout -b mecha origin/mecha ; git checkout master
popd


