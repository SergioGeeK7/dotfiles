#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
. /etc/X11/Xsession
#/usr/bin/xmodmap /home/sergiogeek7/.xinitrc
#. /home/sergiogeek7/.Xmodmap
/usr/bin/xmodmap /home/$USER/.Xmodmap
