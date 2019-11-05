#!/bin/bash
rm -rf exercise
mkdir exercise
cd exercise
git init

touch greeting.txt
git add greeting.txt
git commit -m "Add file greeting.txt"
echo "we want to revert back to this" > greeting.txt
git add greeting.txt
git commit -m "Add content to greeting.txt"
echo "this should have been appended to the original content" > greeting.txt
git add greeting.txt
git commit -m "Add more content to greeting.txt"
