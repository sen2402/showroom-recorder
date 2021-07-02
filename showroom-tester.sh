#!/bin/bash
# coding: utf-8
# Showroom Checker Mechanism by fcicq
# Implementation by sen2402
# A Fork of Showroomlive.sh, change to you-get mechanism to capture. specific to Reva Fidela Adel Pantjoro
# WARNING THIS IS A TEST FILE

(curl -s "https://www.showroom-live.com/room/is_live?room_id=352602" | grep "\"ok\":1") && break
if "\"ok\":1"; do
    you-get https://www.showroom-live.com/050075159262 --debug --auto-rename --timeout 5
    echo "Recorded"
    if "Recorded"; do
    sh showroom-tester.sh
else
echo "Live not detected, restarting $(date +'%F_%H-%M-%S')"
sh showroom-tester.sh
