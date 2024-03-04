#!/bin/bash
waybar &
sleep 2
killall waybar
sleep 1
waybar &
