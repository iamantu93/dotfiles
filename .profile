export editor="vim"
export terminal="st"
[ "$(tty)" = "/dev/tty1"  ] && ! pgrep -x i3 >/dev/null && exec startx
fish
