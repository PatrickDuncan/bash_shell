SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Ignores duplicates in bash history (extend the life of your up arrow)
export HISTCONTROL=ignoreboth:erasedups

# Visual
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\033[1;33m\]\W\[\033[1;36m\]\$(parse_git_branch)\[\033[1;33m\]$\[\033[m\] "
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Aliases
alias git='/usr/local/git/bin/git'
alias profile='vim ~/.bash_profile'
alias ls='ls -GFha'
alias gl='git log'
alias gs='git status'
alias gv='git remote -v'
alias gd='git diff'
alias gm='git commit -m'
alias gc='git checkout'
alias ga='git add'
alias gb='git branch'
alias gp='git pull'

# Git Completion
if [ -f $SCRIPT_DIR/.git-completion.bash ]; then
  . $SCRIPT_DIR/.git-completion.bash
fi
