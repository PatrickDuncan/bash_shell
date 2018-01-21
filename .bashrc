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
if [ -f $SCRIPT_DIR/.aliases ]; then
  source $SCRIPT_DIR/.aliases
fi

# Git Completion
if [ -f $SCRIPT_DIR/.git-completion.bash ]; then
  . $SCRIPT_DIR/.git-completion.bash
fi

# Make Git Completion work for certain aliases
if [ -f $SCRIPT_DIR/.alias-git-completion ]; then
  source $SCRIPT_DIR/.alias-git-completion
fi
