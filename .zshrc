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

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir_writable dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv battery ram disk_usage time)
POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_DISK_USAGE_FOREGORUND="white"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
	# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
	# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
	# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
	# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
	# under VCS as dirty. This makes repository status check for large repositories
		# much, much faster.
		# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
	# stamp shown in the history command output.
	# You can set one of the optional three formats:
	# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
	# or set a custom format using the strftime function format specifications,
	# see 'man strftime' for details.
		# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( extract web-search bgnotify colorize z )

#source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
	# if [[ -n $SSH_CONNECTION ]]; then
		#   export EDITOR='vim'
		# else
			#   export EDITOR='mvim'
			# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# New path inclusion

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
source ~/.oh-my-zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh
