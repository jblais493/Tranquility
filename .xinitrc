xsetroot -cursor_name left_ptr
spotify-listener &
~/.config/polybar/launch.sh
xrandr --output DP-0 --primary --mode 3840x2160 --pos 0x0 --rotate left --output DP-1 --off --output HDMI-0 --off --output DP-2 --off --output DP-3 --off --output HDMI-1 --off --output DP-4 --mode 3840x2160 --pos 2160x840 --rotate normal --output DP-5 --off
dbus-update-activation-environment DISPLAY XAUTHORITY
picom --experimental-backend &
exec bspwm
