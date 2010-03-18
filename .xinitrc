#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# exec gnome-session
#tint2 &
#conky &
DEFAULT_SESSION=openbox-session
#exec openbox-session
case $1 in
kde)
	exec startkde
	;;
openbox)
	exec openbox-session
	;;
*)
	exec $DEFAULT_SESSION
	;;
esac

#exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
#exec xterm

