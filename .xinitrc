xset fp+ ~/.fonts/ &
xset fp rehash &
sxhkd &
compton -c -C -f -o 0.5 -r 10 -O 0.45 -I 0.45 &
xsetroot -cursor_name left_ptr &
exec bspwm
