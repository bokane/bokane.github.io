#!/bin/sh
echo -e "\e[92mUpdating site..."

git add .

d=$(date "+%Y-%m-%d")
tmp_dir=$(mktemp -d ../tmp)

echo -e "\e[92mEnter commit message - no quotes!"

read $msg

git commit -am "$msg ; site updated at $d"

echo -e "\e[92mPushing current directory to master"

git push origin master

echo -e "\e[92mMoving built site to tmp"

mv _site/* $tmp_dir

git checkout -B gh-pages

rm -rf *

mv $tmp_dir/* .

git add .

git commit -am "$msg ; site updated at $d"

git push origin gh-pages --force

git checkout master

rm -rf $tmp_dir

echo "yolo"