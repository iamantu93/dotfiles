export EDITOR="vim"
export TERMINAL="st"
[ "$(tty)" = "/dev/tty1"  ] && ! pgrep -x i3 >/dev/null && exec startx
fish
