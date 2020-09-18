# Move To Corner
A script to move i3 floating windows to screen corners.

# Functioning 
![](https://raw.githubusercontent.com/SofianeHamlaoui/junk/master/Movetocorner.gif)

# How it works : 
For each corner, I used some small mathematical calculations, so it keeps only 1/4 of the window size visible on each corner.

- 1 - Uses xrandr to get the full screen resolution
- 2 - setting 2 variables half x and half y 
- 3 - using xdotool to get the selected window to move
- 4 - using xdotool again to move the window to a specific position, where this postiion is a result of 
mathematical calculations to have the exact postion of the window to keep only 1/4 of the window size visible.

- The presets

    ![1](https://i.imgur.com/bvDfrmQ.png)
    
- An image explaining how this works

    ![2](https://i.imgur.com/297KvMx.png)

## PS: You can check the script and understand more how this works.

# Screenshot : 

![](https://i.imgur.com/q8Z0iXl.png)

# Usage : 
> [1 from 9 keyboard numpad numbers]
```
./movetocorner.sh  [1-9]
```

# i3 config 

You can add this t your `i3/config file` by adding this : 
> you can get the keyboards X event content by softwares like : [xev](https://jlk.fjfi.cvut.cz/arch/manpages/man/xev.1) (for example)
```
# #---Windows-to-corner---# #

bindsym $mod+KP_End   exec --no-startup-id ~/scripts/movetocorner 1
bindsym $mod+KP_Down  exec --no-startup-id ~/scripts/movetocorner 2
bindsym $mod+KP_Next  exec --no-startup-id ~/scripts/movetocorner 3
bindsym $mod+KP_Left  exec --no-startup-id ~/scripts/movetocorner 4
bindsym $mod+KP_Begin exec --no-startup-id ~/scripts/movetocorner 5
bindsym $mod+KP_Right exec --no-startup-id ~/scripts/movetocorner 6
bindsym $mod+KP_Home  exec --no-startup-id ~/scripts/movetocorner 7
bindsym $mod+KP_Up    exec --no-startup-id ~/scripts/movetocorner 8
bindsym $mod+KP_Prior exec --no-startup-id ~/scripts/movetocorner 9

```
