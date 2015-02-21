export AWT_TOOLKIT=XToolkit
export LOCALE=en_GB.utf8
export XTERM_LOCALE=en_GB.utf8
export TERM=rxvt-unicode
setxkbmap gb
xrandr --output VGA-0 --off --output LVDS --mode 1600x900 --pos 0x0 --rotate normal --output HDMI-0 --mode 1920x1080 --pos 1600x0 --rotate normal
exec i3
