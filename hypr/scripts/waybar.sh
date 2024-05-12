#!/bin/bash
waybar &
sleep 2
killall waybar
sleep 1
waybar --config /home/tof/.config/waybar/config --style /home/tof/.config/waybar/style.css 
