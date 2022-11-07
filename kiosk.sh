#!/bin/bash
export XDG_RUNTIME_DIR=/run/user/1000
export DISPLAY=:0.0

if [ -d "$HOME/Desktop" ] ; then

pkill blueman-applet
pkill blueman-console
pkill obexd
pkill update-notifier
pkill xfce4-panel
pkill Thunar
pkill xfce4-notifyd

/usr/bin/xset -dpms
/usr/bin/xset s off
/usr/bin/amixer sset 'Master' 90%

SERVICE="chromium"
CHROME=$(which chromium)
if pgrep -f "$SERVICE" >/dev/null
then
echo "$SERVICE found. Status: ok ..."
else
echo "$SERVICE stopped. RESTART!"
$CHROME -kiosk https://millenium.link &
fi
fi
