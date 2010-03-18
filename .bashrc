
# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'


export GREP_COLOR="1;33"
alias grep='grep --color=auto'
eval $(dircolors -b)

# LESS man page colors -------------------------------------------------

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'                           
export LESS_TERMCAP_so=$'\E[01;44;33m'                                 
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# bash prompt styles ---------------------------------------------------
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
#PS1='\[\033[36m\]\u@\h:\w\$\[\e[0m\] '
#PS1='[\u@\h \W]\$ '
#PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

# linux console colors colors before X login (courtesy phrak)  -------------------------------------

if [ "$TERM" = "linux" ]; then
echo -en "\e]P0000000" #black
echo -en "\e]P8555753" #darkgrey
echo -en "\e]P1ff6565" #darkred
echo -en "\e]P9ff8d8d" #red
echo -en "\e]P293d44f" #darkgreen
echo -en "\e]PAc8e7a8" #green
echo -en "\e]P3eab93d" #brown
echo -en "\e]PBffc123" #yellow
echo -en "\e]P4204a87" #darkblue
echo -en "\e]PC3465a4" #blue
echo -en "\e]P5ce5c00" #darkmagenta
echo -en "\e]PDf57900" #magenta
echo -en "\e]P689b6e2" #darkcyan
echo -en "\e]PE46a4ff" #cyan
echo -en "\e]P7cccccc" #lightgrey
echo -en "\e]PFffffff" #white
clear # bring us back to default input colours
fi


