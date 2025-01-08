#!/usr/bin/env bash


hyprctl keyword monitor HDMI-A-1, 1920x1080@60, 0x0, 1
hyprctl keyword monitor DP-1, 1680x1050@60, 1920x0, 1

pkill -f cs2
