# ~/.zshrc
# My default zshrc
#     _          _
#    / \   _ __ | |_ _   _
#   / _ \ | '_ \| __| | | |
#  / ___ \| | | | |_| |_| |
# /_/   \_\_| |_|\__|\__,_|

export PATH=$HOME/.config/composer/vendor/bin:$PATH
export TERM=xterm-256color
export ZSH="/home/antu/.oh-my-zsh"
export EDITOR=vim
export TERMINAL="st"

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'




 #Aliases
 alias zshconfig="vim ~/.zshrc"
 # alias api='sudo apt install'
 # alias apr='sudo apt remove'
 # alias apu='sudo apt update'
 # alias apup='sudo apt upgrade'
 # alias apa='sudo apt autoremove'
 # alias sni='snap install'
 # alias snr='snap remove'
 alias pi='sudo pacman -S'
 alias pss='sudo pacman -Ss'
 alias pr='sudo pacman -Rns'
 alias pc='sudo pacman -Scc'
 alias pu='sudo pacman -Syu'
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

 vf() { fzf | xargs -r -I % $EDITOR % ;}
 mo() {cd ~/Videos && fzf | xargs -r -I {} mpv "{}" ;}

#Start graphical server if i3 not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx

#Enable syntax highlighting
source /home/antu/Documents/Code/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

