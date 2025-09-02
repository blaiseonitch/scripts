#!/bin/bash

# Grab avg color from selected region
COLOR=$(maim -st 0 \
    | magick - -resize 1x1\! -format '%[pixel:p{0,0}]' info:-)

# Copy to clipboard (X11)
printf "%s" "$COLOR" | xclip -selection clipboard

# Send notification with Dunst
notify-send "Picked Color" "$COLOR" \
    -h string:fgcolor:"$COLOR"

