#!/bin/bash
#Sofiane Hamlaoui

selection=$1
{ read max_x max_y ; } < <(xrandr -q | awk '/\yconnected\y/{ gsub("x|+", " ", $0); print $4 " " $5}')
{ read window_id ; } < <(xdotool getactivewindow)
{ read window_g_x window_g_y ; } < <(xdotool getwindowfocus getwindowgeometry | grep Geometry | cut -d ":" -f2 | sed 's/ //g' | sed 's/x/ /g')
half_x=$(( max_x / 2 ))
half_y=$(( max_y / 2 ))

quarter_window_x=$(( window_g_x / 4 ))
quarter_window_y=$(( window_g_y / 4 ))


case $selection in 
    '1') new_pos="-$((3 * $quarter_window_x)) $(( $max_y - $quarter_window_y))";;
    '2') new_pos="$(($half_x - (2 * $quarter_window_x))) $(($max_y - ($quarter_window_y / 3)))";;
    '3') new_pos="$(($max_x - $quarter_window_x)) $(($max_y - $quarter_window_y))";;
    '4') new_pos="-$(( (11 * $quarter_window_x / 3))) $(($half_y - (2 * $quarter_window_y)))";;
    '5') new_pos="$(($half_x - (2 * $quarter_window_x))) $(($half_y - (2 * $quarter_window_y)))";;
    '6') new_pos="$(($max_x - ($quarter_window_x / 3))) $(($half_y - (2 * $quarter_window_y)))";;
    '7') new_pos="-$((3 * $quarter_window_x))        -$(( (3 * $quarter_window_y) ))";;
    '8') new_pos="$(($half_x - (2 * $quarter_window_x)))  -$(( (11 * $quarter_window_y / 3) ))";;
    '9') new_pos="$(($max_x - ($quarter_window_x)))   -$(((3 * $quarter_window_y)))";;
    *) echo "Invalid preset \"$selection\"" >&2; exit 2;;
esac 

xdotool windowmove $window_id $new_pos
