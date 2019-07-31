export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export PATH=$PATH:$HOME/.scripts/tools:$HOME/.scripts/i3cmds:$HOME/.scripts/cron
[ "$(tty)" = "/dev/tty1"  ] && ! pgrep -x i3 >/dev/null && exec startx

export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"; a="${a%_}"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"; a="${a%_}"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"; a="${a%_}"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"; a="${a%_}"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"; a="${a%_}"

export SUDO_ASKPASS="$HOME/.scripts/tools/dmenupass"
echo "$0" | grep "bash$" >/dev/null && [ -f ~/.bashrc  ] && source "$HOME/.bashrc"
