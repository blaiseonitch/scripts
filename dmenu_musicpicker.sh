#!/bin/bash
# relative path to mpd's music directory *must* be used. absolute path will not be read by mpd.

file="$(mpc listall | rofi -dmenu -p "music" 1)" || exit 0
# file="$(mpc listall | dmenu -i -l 1)" || exit 0
# notify-send "Playing $file" && 
mpc insert "$file" && mpc next >/dev/null
