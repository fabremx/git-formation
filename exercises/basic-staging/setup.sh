#!/bin/bash
rm -rf exercise
mkdir exercise
cd exercise
git init

echo 1 > file.txt
git add file.txt
git commit -m "1"
