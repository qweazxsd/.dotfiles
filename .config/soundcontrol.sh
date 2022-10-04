#!/bin/sh

if [[ $(amixer get Master | grep '\[on\]') ]] && [[ $(amixer get Speaker | grep '\[on\]') ]]; then
	amixer set Master toggle

else
	amixer set Master unmute
	amixer set Speaker unmute
fi
