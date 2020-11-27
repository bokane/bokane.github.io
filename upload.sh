#!/bin/sh
set -x

git add .

d=$(date "+%Y-%m-%d")

echo $d

git commit -am "Site updated at $d"

git push origin master
