#!/bin/sh
git add ./*
git commit -m "$(date +%Y%m%d)"
git push
git pull
