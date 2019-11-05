#!/bin/bash
rm -rf exercise
mkdir exercise
cd exercise
git init

touch master.txt
echo "commit 1" >> master.txt
git add .
git commit -am "master commit 1"
echo "commit 2" >> master.txt
git add .
git commit -am "master commit 2"

git checkout -b bugFix

touch bugFix.txt
echo "commit 1" >> bugFix.txt
git add .
git commit -am "bugFix commit 1"
echo "commit 2" >> bugFix.txt
git add .
git commit -am "bugFix commit 2"

git checkout master
git checkout -b side

touch side.txt
echo "commit 1" >> side.txt
git add .
git commit -am "side commit 1"
echo "commit 2" >> side.txt
git add .
git commit -am "side commit 2"

git checkout master
git checkout -b another

touch another.txt
echo "commit 1" >> another.txt
git add .
git commit -am "another commit 1"
echo "commit 2" >> another.txt
git add .
git commit -am "another commit 2"

git checkout master