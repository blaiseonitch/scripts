#!/bin/bash

#File path to save the Screenshot
FILE_PATH=~/Pictures/Screenshots/$(date +%s).png

#command to take the Screenshot, either window(click the window) or by selection
maim -s | tee "$FILE_PATH" | xclip -selection clipboard -t image/png

#notify with the image
notify-send "Screenshot saved" "$FILE_PATH" -i "$FILE_PATH"
