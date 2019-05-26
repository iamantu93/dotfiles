function fish_greeting
end

set -x PATH $PATH ~/.scripts/i3cmds/ ~/.scripts/tools/
set -x TERMINAL st
fish_vi_key_bindings

function fish_prompt
	set_color red --bold
	printf "["
	set_color yellow
	printf $USER
	set_color green
	printf @
	set_color blue --bold
	printf "$hostname "
	set_color magenta
	echo -n $PWD | sed 's|/home/antu|~|'
	set_color red
	printf "]"
	set_color green --bold

	if test -d (pwd)/.git
		printf "%s %s " (__fish_git_prompt) (__fish_git_prompt_informative_status)
	else
		printf " "
	end
	
	set_color normal
end

abbr pi "sudo pacman -S"
abbr pss "sudo pacman -Ss"
abbr pr "sudo pacman -Rns"
abbr pc "sudo pacman -Scc"
abbr pu "sudo pacman -Syu"
abbr r "ranger"
abbr er "sudo vim /etc/resolv.conf"
abbr mp "udisksctl mount -b /dev/sd"
abbr lb "lsblk"
abbr gi "git init"
abbr gaa "git add ."
abbr gc "git commit -m"
abbr gp "git push --force origin master"
abbr srec "ffmpeg -f x11grab -s 1920x1080 -i :0.0 -r 40  -f alsa -i default  out.mp4"
abbr wth "curl http://wttr.in"
abbr mtm "simple-mtpfs ~/Phone" # Need simple-mtpfs to be installed
abbr mtu "fusermount -u ~/Phone"

function vf

command  fzf | xargs -r -I % $EDITOR % ;

end

