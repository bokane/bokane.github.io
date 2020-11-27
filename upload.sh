#!/bin/sh

msg="Site updated at $(date "+%Y-%m-%d")"

git commit -am $msg

git push origin master
