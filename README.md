# Move To Corner
A script to move i3 floating windows to screen corners.

# Functioning 
![](https://raw.githubusercontent.com/SofianeHamlaoui/junk/master/Movetocorner.gif)

# How it works : 
The script uses the keyboard's numpad numbers to select the corner location you want to send the window to.

For each corner, I used some small mathematical calculations so you it gets the resolution of your screnn, and keep only 1/4 of the window size on each corner.
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
