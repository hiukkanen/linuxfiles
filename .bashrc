[ -z "$PS1" ] && return

#aliases
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias dir='ls'

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_EDITOR=vim

#change the prompt
function setPrompt {
    local GREEN_FG="$(tput setaf 2)"
    local DEFAULT_FG="$(tput sgr0)"
    local BLUE_FG="$(tput setaf 4)"
    local YELLOW_FG="$(tput setaf 3)"
    PS1="${GREEN_FG}\w\n${DEFAULT_FG}[${GREEN_FG}\u${DEFAULT_FG}@${GREEN_FG}\h${DEFAULT_FG}${YELLOW_FG}\$(__git_ps1)${DEFAULT_FG}]\n> "
}
setPrompt

source ~/linuxfiles/mvn-color-function.sh

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
export TERM=xterm-256color
#ignore same inputs in history
export HISTIGNORE="&"

# some silly row for RVM
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
