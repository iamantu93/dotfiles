export EDITOR="vim"
export TERMINAL="st"
export PATH=$HOME/.scripts/tools:$HOME/.scripts/i3cmds:$HOME/.scripts/cron:$PATH

[ "$(tty)" = "/dev/tty1"  ] && ! pgrep -x i3 >/dev/null && exec startx

export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '')"="${a%_}"
export LESS_TERMCAP_md="$(printf '%b' '')"="${a%_}"
export LESS_TERMCAP_me="$(printf '%b' '')"="${a%_}"
export LESS_TERMCAP_so="$(printf '%b' '')"="${a%_}"
export LESS_TERMCAP_se="$(printf '%b' '')"="${a%_}"
export LESS_TERMCAP_us="$(printf '%b' '')"="${a%_}"
export LESS_TERMCAP_ue="$(printf '%b' '')"="${a%_}"

echo "$0" | grep "bash$" >/dev/null && [ -f ~/.bashrc  ] && source "$HOME/.bashrc"
