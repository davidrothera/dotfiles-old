#!/usr/bin/env bash

icon="$HOME/.config/i3/scripts/lock.png"
# icon="$HOME/img/lock_1.png"
tmpbg="$(mktemp /tmp/screen-XXXXXXXXXX.png)"

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 5% -scale 2000% "$tmpbg"

# Check number of connected displays to guess where the lock should be
# positioned
displays=$(xrandr | awk '$2 == "connected" {print $1}' | wc -l)
if (( $displays > 1 )); then
    convert "$tmpbg" "$icon" -gravity center -geometry +950-200 -composite \
        -matte -colorize 25% "$tmpbg"
else
    convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
fi

pkill -u "$USER" -USR1 dunst

i3lock -i "$tmpbg"

pkill -u "$USER" -USR2 dunst
