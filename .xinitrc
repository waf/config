#!/bin/sh

# compose key, capslock=>esc
setxkbmap -layout us -option compose:ralt,caps:escape

# clipboard syncing
autocutsel -fork &
autocutsel -selection PRIMARY -fork &

# ooh shiny
compton -b &

feh --bg-scale ~/images/parrot.jpg

exec i3
