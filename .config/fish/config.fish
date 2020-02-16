#!/usr/bin/fish

function fish_greeting
end

# Start Graphical server automatically
#[ (tty) = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx

set -x TERMINAL st
set -x EDITOR nvim
fish_vi_key_bindings
set -x MANPAGER "nvim -c 'set ft=man' - "
set -x fish_user_paths $HOME/.scripts/tools $fish_user_paths

function fish_prompt

	shellprompt
end

# Some abbribations
abbr pi "sudo pacman -S"
abbr pss "pacman -Ss"
abbr pr "sudo pacman -Rns"
abbr pc "sudo pacman -Scc"
abbr pu "sudo pacman -Syu && pkill -RTMIN+8 i3blocks"
abbr r "ranger"
abbr er "sudo vim /etc/resolv.conf"
abbr mp "udisksctl mount -b /dev/sd"
abbr lb "lsblk"
abbr gi "git init"
abbr gaa "git add ."
abbr gc "git commit -m"
abbr gp "git push --force origin master"
abbr srec "ffmpeg -f x11grab -s 1920x1080 -i :0.0 -r 60  -f alsa -i default  out.mp4"
abbr wth "curl http://wttr.in"
abbr mtm "simple-mtpfs ~/Phone" # Need simple-mtpfs to be installed
abbr mtu "fusermount -u ~/Phone"
alias ccat "highlight --out-format=ansi --force"
abbr vim "nvim"
abbr apr "sudo apt remove"
abbr api "sudo apt install"
abbr apu "sudo apt dist-upgrade"
abbr apa "sudo apt autoremove"
abbr remap "xmodmap -e 'keycode 62 = space'"
abbr l "ls -lh"
abbr la "ls -lah"
abbr cheat "curl cheat.sh"

function se

	command du -a ~/.scripts ~/.config | awk '{ print $2 }'| fzf | xargs -r -I % $EDITOR %;

end


function op

	command fzf --height 70% | xargs -r -I % xdg-open % ;
end
