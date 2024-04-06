
#export QT_STYLE_OVERRIDE=kvantum
export EDITOR="nvim"
export BAT_THEME="Monokai Extended"
export TERMINAL="st"
export BROWSER="firefox"
export PATH=$PATH:$HOME/.scripts/tools:$HOME/.scripts/i3cmds:$HOME/.scripts/cron
export XDG_DATA_DIRS=$XDG_DATA_DIRS:/var/lib/flatpak/exports/share:/home/antu/.local/share/flatpak/exports/share
export MANPAGER="nvim -c 'set ft=man' -"
export SUDO_ASKPASS="$HOME/.scripts/tools/dmenupass"
export LF_ICONS="di=:fi=:ln=:or=:ex=:*.c=:*.cc=:*.clj=:*.coffee=:*.cpp=:*.css=:*.d=:*.dart=:*.erl=:*.exs=:*.fs=:*.go=:*.h=:*.hh=:*.hpp=:*.hs=:*.html=:*.java=:*.jl=:*.js=:*.json=:*.lua=:*.md=:*.php=:*.pl=:*.pro=:*.py=:*.rb=:*.rs=:*.scala=:*.ts=:*.vim=:*.cmd=:*.ps1=:*.sh=:*.bash=:*.zsh=:*.fish=:*.tar=:*.tgz=:*.arc=:*.arj=:*.taz=:*.lha=:*.lz4=:*.lzh=:*.lzma=:*.tlz=:*.txz=:*.tzo=:*.t7z=:*.zip=:*.z=:*.dz=:*.gz=:*.lrz=:*.lz=:*.lzo=:*.xz=:*.zst=:*.tzst=:*.bz2=:*.bz=:*.tbz=:*.tbz2=:*.tz=:*.deb=:*.rpm=:*.jar=:*.war=:*.ear=:*.sar=:*.rar=:*.alz=:*.ace=:*.zoo=:*.cpio=:*.7z=:*.rz=:*.cab=:*.wim=:*.swm=:*.dwm=:*.esd=:*.jpg=:*.jpeg=:*.mjpg=:*.mjpeg=:*.gif=:*.bmp=:*.pbm=:*.pgm=:*.ppm=:*.tga=:*.xbm=:*.xpm=:*.tif=:*.tiff=:*.png=:*.svg=:*.svgz=:*.mng=:*.pcx=:*.mov=:*.mpg=:*.mpeg=:*.m2v=:*.mkv=:*.webm=:*.ogm=:*.mp4=:*.m4v=:*.mp4v=:*.vob=:*.qt=:*.nuv=:*.wmv=:*.asf=:*.rm=:*.rmvb=:*.flc=:*.avi=:*.fli=:*.flv=:*.gl=:*.dl=:*.xcf=:*.xwd=:*.yuv=:*.cgm=:*.emf=:*.ogv=:*.ogx=:*.aac=:*.au=:*.flac=:*.m4a=:*.mid=:*.midi=:*.mka=:*.mp3=:*.mpc=:*.ogg=:*.ra=:*.wav=:*.oga=:*.opus=:*.spx=:*.xspf=:*.pdf="

# Set the prompt
eval "$(starship init zsh)"
# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history # Manually create the file
setopt histignorealldups sharehistory no_list_ambiguous

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}

zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}

zle -N zle-line-init

echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'
bindkey '^f' forward-word

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Usefull options
setopt autocd

# Some functions
vf() { fzf | xargs -r -I % $EDITOR % ;}
se(){ du -a ~/.scripts ~/.config | awk '{ print $2 }'| fzf | xargs -r -I % $EDITOR %; }
ch(){ curl cheat.sh/$1; }

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

#Enable syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^[[1;5C' forward-word
bindkey '^R' history-incremental-search-backward
