#!/bin/sh
# THIS IS CURRENTLY BEING RUN FROM MY Awesome rc.lua
# SO DON'T EXECUTE A WINDOW MANAGER AT THE END

run_once() {
    for P in `pidof $1`; do
        PROCUID=`cat /proc/$P/loginuid`
        [ ! -z "$PROCUID" -a "$PROCUID" -eq "$UID" ] && return 1
    done
    $@
}
 
(
    sleep 2
    xrdb -merge ~/.Xresources
    #xsetroot -solid midnightblue
    [ -x /usr/bin/xscreensaver ] && run_once xscreensaver -no-splash &
    [ -x /usr/bin/nm-applet ] && run_once nm-applet --sm-disable &
    [ -x /usr/bin/bluetooth-applet ] && run_once bluetooth-applet &
    [ -x /usr/bin/xfce4-power-manager ] && run_once xfce4-power-manager &
)

#exec awesome
exit 0
