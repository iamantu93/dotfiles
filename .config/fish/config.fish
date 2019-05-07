function fish_greeting
end

function fish_prompt
set_color red --bold
printf "["
set_color yellow
printf $USER
set_color green
printf @
set_color blue
printf "$hostname"
set_color magenta
printf $PWD
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


