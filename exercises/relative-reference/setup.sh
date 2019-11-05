#!/bin/bash
rm -rf exercise
mkdir exercise
cd exercise
git init

git commit --allow-empty -m "master commit 1"
git commit --allow-empty -m "master commit 2"
git commit --allow-empty -m "master commit 3"
git checkout HEAD^
git checkout -b bugFix
git commit --allow-empty -m "bugFix commit 1"
git checkout master
git commit --allow-empty -m "master commit 4"
git checkout bugFix
git commit --allow-empty -m "bugFix commit 2"
git commit --allow-empty -m "bugFix commit 3"
git checkout master^