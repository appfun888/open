#!/bin/sh
git add ./*
git add open/
git commit -m "a"
git push origin master
git pull
