#!/bin/sh

setxkbmap -layout us -option compose:ralt,caps:escape

autocutsel -fork &
autocutsel -selection PRIMARY -fork &

feh --bg-scale ~/images/parrot.jpg

exec i3
