#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# launch Xscreensaver
xscreensaver -no-splash &

# hide mouse after 5 idle seconds
unclutter -idle 5 -jitter 10 &

# configure trackpad
#synclient HorizEdgeScroll=1
#synclient TapButton1=1

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

DEFAULT_SESSION=awesome
case $1 in
  awesome) exec $1;;
  *) exec ck-launch-session dbus-launch $DEFAULT_SESSION;;
esac

