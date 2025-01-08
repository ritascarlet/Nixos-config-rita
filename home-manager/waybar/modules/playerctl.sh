#!/usr/bin/env bash

while true; do
    echo "$(playerctl metadata artist) - $(playerctl metadata title)"
    sleep 2
done
