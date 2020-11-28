#!/bin/sh
set -x

echo -e "\e[92mUpdating site..."

git add .

d=$(date "+%Y-%m-%d")
tmp_dir=$(mktemp -d ../tmp)


git commit -am "Site updated at $d"

echo -e "\e[92mPushing current directory to master"

git push origin master

echo -e "\e[92mMoving built site to tmp"

mv _site/* 

