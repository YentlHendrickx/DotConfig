#!/usr/bin/bash

# Start swww (Wallpaper service)
swww query || swww init

DIR=~/documents/backgrounds/

VAR=$(ls ${DIR} | grep ".jpg\|.jpeg\|.png\|.gif" | shuf -n 1)

swww img "${DIR}/${VAR}"
