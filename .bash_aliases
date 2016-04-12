# Make all relevant parent directories
alias md='mkdir -p'

#Move into imperial directory
alias imp='cd ~/Imperial'

#Gnome-mplayer
alias gmplayer='gnome-mplayer'

#ls aliases
#enable color support of ls and grep
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto -h'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias la='ls -A'
