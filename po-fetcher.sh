#!/bin/bash

# Autor: Andre Miranda?
# Get all transtations for galician


PROJECTS="xfce/exo
xfce/garcon
xfce/libxfce4ui
xfce/libxfce4util
xfce/thunar
xfce/thunar-volman
xfce/tumbler
xfce/xfce4-appfinder
xfce/xfce4-panel
xfce/xfce4-power-manager
xfce/xfce4-session
xfce/xfce4-settings
xfce/xfconf
xfce/xfdesktop
xfce/xfwm4
apps/catfish
apps/gigolo
apps/mousepad
apps/orage
apps/parole
apps/ristretto
apps/squeeze
apps/xfburn
apps/xfce4-dict
apps/xfce4-mixer
apps/xfce4-notifyd
apps/xfce4-panel-profiles
apps/xfce4-screensaver
apps/xfce4-screenshooter
apps/xfce4-taskmanager
apps/xfce4-terminal
apps/xfmpc
panel-plugins/xfce4-battery-plugin
panel-plugins/xfce4-calculator-plugin
panel-plugins/xfce4-clipman-plugin
panel-plugins/xfce4-cpufreq-plugin
panel-plugins/xfce4-cpugraph-plugin
panel-plugins/xfce4-datetime-plugin
panel-plugins/xfce4-diskperf-plugin
panel-plugins/xfce4-embed-plugin
panel-plugins/xfce4-eyes-plugin
panel-plugins/xfce4-fsguard-plugin
panel-plugins/xfce4-genmon-plugin
panel-plugins/xfce4-hardware-monitor-plugin
panel-plugins/xfce4-indicator-plugin
panel-plugins/xfce4-mailwatch-plugin
panel-plugins/xfce4-mount-plugin
panel-plugins/xfce4-mpc-plugin
panel-plugins/xfce4-netload-plugin
panel-plugins/xfce4-notes-plugin
panel-plugins/xfce4-places-plugin
panel-plugins/xfce4-pulseaudio-plugin
panel-plugins/xfce4-sample-plugin
panel-plugins/xfce4-sensors-plugin
panel-plugins/xfce4-smartbookmark-plugin
panel-plugins/xfce4-statusnotifier-plugin
panel-plugins/xfce4-stopwatch-plugin
panel-plugins/xfce4-systemload-plugin
panel-plugins/xfce4-time-out-plugin
panel-plugins/xfce4-timer-plugin
panel-plugins/xfce4-verve-plugin
panel-plugins/xfce4-wavelan-plugin
panel-plugins/xfce4-weather-plugin
panel-plugins/xfce4-whiskermenu-plugin
panel-plugins/xfce4-xkb-plugin
thunar-plugins/thunar-archive-plugin
thunar-plugins/thunar-media-tags-plugin
thunar-plugins/thunar-shares-plugin
thunar-plugins/thunar-vcs-plugin"

#this line "apps/xfdashboard" is removed, not work for me.

mkdir -p xfce-po-files

for PROJECT in $PROJECTS; do
  NAME=$(echo $PROJECT | cut -f2 -d/)
  curl https://git.xfce.org/$PROJECT/plain/po/gl.po -o xfce-po-files/$NAME.po
done

curl https://git.xfce.org/www/www.xfce.org/plain/lib/po/gl.po -o xfce-po-files/www.po

msgcat xfce-po-files/*.po -o xfce.po
