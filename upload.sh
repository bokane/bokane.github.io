#!/bin/sh

git add .

msg="\"Site updated at $(date "+%Y-%m-%d")\""

git commit -am $msg

git push origin master
