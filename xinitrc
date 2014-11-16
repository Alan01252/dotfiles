export AWT_TOOLKIT=XToolkit
export LOCALE=en_GB.utf8
export XTERM_LOCALE=en_GB.utf8
export TERM=rxvt-unicode
xrandr --output VGA-0 --mode 1366x768 --pos 0x0 --rotate normal --output LVDS --mode 1600x900 --pos 1366x0 --rotate normal --output HDMI-0 --off
exec i3
