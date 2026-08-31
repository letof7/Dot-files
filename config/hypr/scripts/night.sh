#!/bin/bash

if pgrep -x hyprsunset > /dev/null; then
    pkill -x hyprsunset
    notify-send  "Night mode OFF"
else
    hyprsunset -t 4400 &
    notify-send  "Night mode ON"
fi

