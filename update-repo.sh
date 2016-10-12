#!/bin/bash
set -x #echo on

cd ./repo
dpkg-scanpackages debs / > Packages
bzip2 -fks Packages

cd ..
git add ./repo/*
git commit -m "Updated repo"
git push