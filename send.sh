#!/bin/sh

chmod + ./*.db
git add ./*
git commit -m "$(date +%Y%m%d)"
git push
git pull

scp -P 31396 ./*.db root@107.148.19.153:/www/wwwroot/16200
# root@104.219.214.74 -p 12824
scp -P 12824 ./*.db root@104.219.214.74:/www/wwwroot/open
# scp -P 33829 ./*.db root@156.242.10.233:/www/wwwroot/new.open


# PROCESS=`ls | grep .db`
# for i in $PROCESS
# do
#     ./prolzy/send.sh $(pwd)/$i
# done
