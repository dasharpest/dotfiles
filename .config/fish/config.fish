cat ~/.cache/wal/sequences

### SETTING THE STARSHIP PROMPT ###

starship init fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end

### ADDING TO THE PATH ###

# First line removes the path; second line sets it.  Without the first line,
# your path gets massive and fish becomes very slow.
set -e fish_user_paths
set -U fish_user_paths $HOME/.local/bin $HOME/.config/emacs/bin $HOME/Applications $fish_user_paths

### EXPORT ###

set fish_greeting
set TERM "xterm-256color"
set EDITOR "vim"
set VISUAL "vim"

### SET FZF DEFAULTS

set FZF_DEFAULT_OPTS "--layout=reverse --exact --border=bold --border=rounded --margin=3% --color=dark"

### SET MANPAGER

# "nvim" as manpager
set -x MANPAGER "nvim +Man!"

### SET VI MODE ###

function fish_user_key_bindings
  fish_vi_key_bindings
end

### SET CURSOR ###
# block, line, underscore
set fish_cursor_default block

### FUNCTIONS ###
# Functions needed for !! and !$
function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end

# The bindings for !! and !$
if [ "$fish_key_bindings" = "fish_vi_key_bindings" ];
  bind -Minsert ! __history_previous_command
  bind -Minsert '$' __history_previous_command_arguments
else
  bind ! __history_previous_command
  bind '$' __history_previous_command_arguments
end

# Function for copying files and directories, even recursively.
# ex: copy DIRNAME LOCATIONS
# result: copies the directory and all of its contents.
function copy
    set count (count $argv | tr -d \n)
    if test "$count" = 2; and test -d "$argv[1]"
	set from (echo $argv[1] | trim-right /)
	set to (echo $argv[2])
        command cp -r $from $to
    else
        command cp $argv
    end
end

### ALIASES ###

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
#alias .5='cd ../../../../..'

# file
alias lf="yazi"
alias cdl="cd $1 && ls"
alias mkdir="mkdir -p"
alias cdc="cd ~/.config"

# system
alias maintain="yay -Sc && sudo pacman -Scc"
alias purge="pacman -Qtdq | sudo pacman -Rns -" # remove unused packages, also try > pacman -Qqd | pacman -Rsu --print -
alias trim="sudo fstrim -av"
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias clpw="cliphist wipe"
alias ff="fastfetch"
alias cat="bat --theme=base16"
alias ls='eza --icons=always --color=always -a'
alias ll='eza --icons=always --color=always -la'
alias umnt="sudo umount -a"

# git
alias gg="cd ~/git"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gpl="git pull"
alias gcl="git clone"
alias gs="git status"
alias lg="lazygit"

# virt machines
alias lvon="sudo systemctl start libvirtd.service"
alias lvoff="sudo systemctl stop libvirtd.service"
