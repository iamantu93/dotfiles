#
# ~/.bashrc
#     _          _
#    / \   _ __ | |_ _   _
#   / _ \ | '_ \| __| | | |
#  / ___ \| | | | |_| |_| |
# /_/   \_\_| |_|\__|\__,_|
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
fish
# Change the window title of X terminals
case ${TERM} in
	xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|interix|konsole*)
		PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"'
		;;
	screen*)
		PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\033\\"'
		;;
esac

use_color=true

# Custom color prompt
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"


# movement and autocompeletion at the prompt
bind 'set completion-ignore-case on'	# case insensitive on tab completion
bind '"\t":menu-complete'		# Tab: Cycle thru completion
bind '"\e[1;3D":backward-kill-word'	# Alt + arrowleft : delete word backward
bind '"\e\e[D":backward-kill-word'	# Alt + arrowleft : delete word backward
bind '"\e[1;3A":kill-whole-line'	# Alt + arrowup : delete whole line
bind '"\e[1;3B":undo'			# Alt + arrowdown : undo
bind '"\e[1;5C":forward-word'		# Ctrl + arrowright : Jump a word forward
bind '"\e[1;5D":backward-word'		# Ctrl + arrowleft : Jump a word backward
bind '"\e[Z":menu-complete-backward'	# Shift+Tab: Cycle backwards
bind '"\e[A": history-search-backward'	# ArrowUp: history completion backwards
bind '"\e[B": history-search-forward'	# ArrowDown: history completion forward

# some aliases
alias l='ls -a --color --group-directories-first'
alias cp="cp -vi"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias more=less
alias pi='sudo pacman -S'
alias pss='sudo pacman -Ss'
alias pr='sudo pacman -Rns'
alias pc='sudo pacman -Scc'
alias pu='sudo pacman -Syu --noconfirm && pkill -RTMIN+8 i3blocks'
alias r='ranger'
alias er='sudo vim /etc/resolv.conf'
alias mp='udisksctl mount -b'
alias lb='lsblk'
alias gi='git init'
alias gaa='git add .'
alias gc='git commit -m'
alias gp='git push --force origin master'
alias srec='ffmpeg -f x11grab -s 1920x1080 -i :0.0 -r 40  -f alsa -i default  out.mp4'
alias wth='curl http://wttr.in'
alias mtm='simple-mtpfs ~/Phone' # Need simple-mtpfs to be installed
alias mtu='fusermount -u ~/Phone'
alias vim='nvim'

vf() { fzf | xargs -r -I % $EDITOR % ;}
se(){ du -a ~/.scripts ~/.config | awk '{ print $2 }'| fzf --height 70% --reverse | xargs -r -I % $EDITOR %; }
op(){ fzf --height 70 % | xargs -r -I % xdg-open %; }

complete -cf sudo

shopt -s checkwinsize
shopt -s expand_aliases

# export QT_SELECT=4

# Enable history appending instead of overwriting.  #139609
shopt -s histappend
shopt -s autocd

