#!/bin/bash

pushd frameworks/base/
git fetch --all
git reset HEAD --hard
git checkout tmp
git branch -D master
git branch -D mecha
popd

pushd system/core/
git fetch --all
git reset HEAD --hard
git checkout tmp 
git branch -D master
git branch -D mecha
popd

pushd packages/apps/God_Mode/
git fetch --all
git reset HEAD --hard
git checkout tmp 
git branch -D master
git branch -D mecha
popd

pushd system/netd/
git fetch --all
git reset HEAD --hard
git checkout tmp 
git branch -D master
git branch -D mecha
popd

pushd packages/apps/Phone/
git fetch --all
git reset HEAD --hard
git checkout tmp 
git branch -D master
git branch -D mecha
popd

pushd packages/apps/Settings/
git fetch --all
git reset HEAD --hard
git checkout tmp 
git branch -D master
git branch -D mecha
popd

pushd packages/apps/Stk/
git reset HEAD --hard
git fetch --all
git checkout tmp 
git branch -D master
git branch -D mecha
popd

pushd packages/providers/TelephonyProvider/
git fetch --all
git reset HEAD --hard
git checkout tmp 
git branch -D master
git branch -D mecha
popd


