#
# ~/.bashrc
#     _          _
#    / \   _ __ | |_ _   _
#   / _ \ | '_ \| __| | | |
#  / ___ \| | | | |_| |_| |
# /_/   \_\_| |_|\__|\__,_|

export QT_STYLE_OVERRIDE=kvantum
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export PATH=$PATH:$HOME/.scripts/tools:$HOME/.scripts/i3cmds:$HOME/.scripts/cron
export XDG_DATA_DIRS=$XDG_DATA_DIRS:/var/lib/flatpak/exports/share:/home/antu/.local/share/flatpak/exports/share
export MANPAGER="nvim -c 'set ft=man' -"
export SUDO_ASKPASS="$HOME/.scripts/tools/dmenupass"
export LF_ICONS="di=:fi=:ln=:or=:ex=:*.c=:*.cc=:*.clj=:*.coffee=:*.cpp=:*.css=:*.d=:*.dart=:*.erl=:*.exs=:*.fs=:*.go=:*.h=:*.hh=:*.hpp=:*.hs=:*.html=:*.java=:*.jl=:*.js=:*.json=:*.lua=:*.md=:*.php=:*.pl=:*.pro=:*.py=:*.rb=:*.rs=:*.scala=:*.ts=:*.vim=:*.cmd=:*.ps1=:*.sh=:*.bash=:*.zsh=:*.fish=:*.tar=:*.tgz=:*.arc=:*.arj=:*.taz=:*.lha=:*.lz4=:*.lzh=:*.lzma=:*.tlz=:*.txz=:*.tzo=:*.t7z=:*.zip=:*.z=:*.dz=:*.gz=:*.lrz=:*.lz=:*.lzo=:*.xz=:*.zst=:*.tzst=:*.bz2=:*.bz=:*.tbz=:*.tbz2=:*.tz=:*.deb=:*.rpm=:*.jar=:*.war=:*.ear=:*.sar=:*.rar=:*.alz=:*.ace=:*.zoo=:*.cpio=:*.7z=:*.rz=:*.cab=:*.wim=:*.swm=:*.dwm=:*.esd=:*.jpg=:*.jpeg=:*.mjpg=:*.mjpeg=:*.gif=:*.bmp=:*.pbm=:*.pgm=:*.ppm=:*.tga=:*.xbm=:*.xpm=:*.tif=:*.tiff=:*.png=:*.svg=:*.svgz=:*.mng=:*.pcx=:*.mov=:*.mpg=:*.mpeg=:*.m2v=:*.mkv=:*.webm=:*.ogm=:*.mp4=:*.m4v=:*.mp4v=:*.vob=:*.qt=:*.nuv=:*.wmv=:*.asf=:*.rm=:*.rmvb=:*.flc=:*.avi=:*.fli=:*.flv=:*.gl=:*.dl=:*.xcf=:*.xwd=:*.yuv=:*.cgm=:*.emf=:*.ogv=:*.ogx=:*.aac=:*.au=:*.flac=:*.m4a=:*.mid=:*.midi=:*.mka=:*.mp3=:*.mpc=:*.ogg=:*.ra=:*.wav=:*.oga=:*.opus=:*.spx=:*.xspf=:*.pdf="

#[ "$(tty)" = "/dev/tty1"  ] && ! pgrep -x i3 >/dev/null && exec startx

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

# Some aliases 
alias vim='nvim'
alias la='ls -lah --color --group-directories-first'
alias l='ls -lh --color --group-directories-first'
alias cp="cp -vi"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias more=less
alias pi='sudo pacman -S'
alias pss='pacman -Ss'
alias pr='sudo pacman -Rns'
alias pc='sudo pacman -Scc'
alias pu='sudo pacman -Syu --noconfirm'
alias remap='xmodmap -e " keycode 62 = space"'
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
alias ext='atool -X'

vf() { fzf | xargs -r -I % $EDITOR % ;}
se(){ du -a ~/.scripts ~/.config | awk '{ print $2 }'| fzf --height 70% --reverse | xargs -r -I % $EDITOR %; }
ch(){ curl cheat.sh/$1; }

complete -cf sudo
shopt -s checkwinsize
shopt -s expand_aliases

# Enable history appending instead of overwriting.  #139609
shopt -s histappend
shopt -s autocd
