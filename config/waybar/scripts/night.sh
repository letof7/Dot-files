#!/bin/bash

if pgrep -x hyprsunset > /dev/null; then
    pkill -x hyprsunset
    echo "Night mode OFF"
else
    hyprsunset -t 4400 &
    echo "Night mode ON"
fi
