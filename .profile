export EDITOR="vim"
export TERMINAL="st"
export PATH=$HOME/.scripts/tools:$HOME/.scripts/i3cmds:$HOME/.scripts/cron:$PATH
[ "$(tty)" = "/dev/tty1"  ] && ! pgrep -x i3 >/dev/null && exec startx
fish
