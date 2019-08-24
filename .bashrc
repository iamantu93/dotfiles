#
# ~/.bashrc
#     _          _
#    / \   _ __ | |_ _   _
#   / _ \ | '_ \| __| | | |
#  / ___ \| | | | |_| |_| |
# /_/   \_\_| |_|\__|\__,_|

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
use_color=true
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$\[$(tput setaf 10)\]\[\$(gitstatus)\]\[$(tput sgr0)\]"

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

# Source aliases file
[ -f ~/.config/aliasrc ] && source ~/.config/aliasrc

vf() { fzf | xargs -r -I % $EDITOR % ;}
se(){ du -a ~/.scripts ~/.config | awk '{ print $2 }'| fzf --height 70% --reverse | xargs -r -I % $EDITOR %; }
ch(){ curl cheat.sh/$1; }
complete -cf sudo
shopt -s checkwinsize
shopt -s expand_aliases

# Enable history appending instead of overwriting.  #139609
shopt -s histappend
shopt -s autocd
