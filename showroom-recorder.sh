#!/bin/bash
# coding: utf-8
# Showroom Checker Mechanism by fcicq
# Implementation by sen2402
# A Fork of Showroomlive.sh, change to you-get mechanism to capture. specific to Reva Fidela Adel Pantjoro

(jq --version 1>/dev/null 2>&1) || (echo 'install jq first'; exit)
(livestreamer --version 1>/dev/null 2>&1) || (echo 'install livestreamer first (run pip/pip3 install livestreamer)'; exit)
if [ -n "$1" ]; then
    id=$(echo "$1" | sed 's|^.*/||g')
    while true; do
        while true; do
            (curl -s "https://www.showroom-live.com/room/is_live?room_id=318239" | grep "\"ok\":1") && break
            echo "Not Alive, Sleeping $(date +'%F_%H-%M-%S')"
            sleep 5
        done
        you-get https://www.showroom-live.com/JKT48_Adel --debug -a
        if [ "$2" != "loop" ]; then
            break
        fi
    done
else
    echo "usage: $0 showroom_roomid (Note: roomid is not username)"
fi
