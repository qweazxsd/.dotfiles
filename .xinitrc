#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


if [[ $(xrandr -q | grep 'HDMI-1 connected') ]] && [[ $(xrandr -q | grep 'HDMI-2 connected') ]]; then
	xrandr --output eDP-1 --off --output HDMI-1 --primary --mode 2560x1440 --rotate normal --output HDMI-2 --mode 1920x1080  --rotate normal --right-of HDMI-1 &
fi
xset s off
xset s noblank
xsetroot -cursor_name left_ptr
setxkbmap -model logitech_g15 -layout us,il -option grp:alt_shift_toggle &
picom -b &
nitrogen --restore
exec bspwm
