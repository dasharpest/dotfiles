#
# ~/.bashrc
#

export PS1="\[$(tput setaf 139)\]\u\[$(tput setaf 109)\]@\[$(tput setaf 39)\]\h \[$(tput setaf 114)\]\w \[$(tput sgr0)\]$ "
export PS1="\[\e[38;5;140m\]\u\[\e[38;5;109m\]@\[\e[38;5;39m\]\h \[\e[38;5;114m\]\w \[\033[0m\]$ "
export EDITOR='nvim'
export VISUAL='nvim'
export TERMINAL='alacritty'
export BROWSER='firefox'
export BROWSERCLI='w3m'
export HISTORY_IGNORE="(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..|htop|nvtop|y)"
export PATH="$HOME/.config/emacs/bin:$PATH"
export BAT_THEME="base16"
export MANPAGER="nvim +Man!"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '

alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

alias grub-update="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias maintain="yay -Sc && sudo pacman -Scc"
alias update="yay -Syu --nocombinedupgrade"
alias purge="pacman -Qtdq | sudo pacman -Rns -" # remove unused packages, also try > pacman -Qqd | pacman -Rsu --print -
alias trim="sudo fstrim -av"

alias vm-on="sudo systemctl start libvirtd.service"
alias vm-off="sudo systemctl stop libvirtd.service"
alias vb-on="sudo systemctl start vboxweb.service"
alias vb-off="sudo systemctl stop vboxweb.service"

alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias lf="yazi"
alias cdl="cd $1 && ls"
alias mkcd="mkcd_alias() { mkdir "$1" && cd "$1"; }; mkcd_alias"
alias mkdir="mkdir -p"

alias gg="cd ~/Git"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gpl="git pull"
alias gcl="git clone"
alias gs="git status"
alias dots="/usr/bin/git --git-dir=~/Git/bare --work-tree=$HOME"

alias kn="keyname"
alias ytf="ytfzf -t"
alias musica="ncmpcpp"
alias aq="asciiquarium"
alias nf="neofetch"
alias clc="tty-clock"
alias pks="pokemon-colorscripts -r --no-title"
alias moon="curl wttr.in/Moon"
alias nb="newsboat"

alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4=' ../../../..'
alias .5='cd ../../../../..'
