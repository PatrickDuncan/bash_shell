SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Ignores duplicates in bash history (extend the life of your up arrow)
export HISTCONTROL=ignoreboth:erasedups

# Stops autocompleting files when using cd
complete -d cd

# Prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\033[1;33m\]\W\[\033[1;36m\]\$(parse_git_branch)\[\033[1;33m\]$\[\033[m\] "
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Vim syntax coloring
if [ -f $SCRIPT_DIR/.vimrc ] && [ ! -f ~/.vimrc ]; then
  ln -s $SCRIPT_DIR/.vimrc ~/.vimrc
fi

# Aliases
if [ -f $SCRIPT_DIR/.aliases ]; then
  . $SCRIPT_DIR/.aliases
fi

# Git Completion
if [ -f $SCRIPT_DIR/.git-completion.bash ]; then
  . $SCRIPT_DIR/.git-completion.bash
fi

# Make Git Completion work for certain aliases
if [ -f $SCRIPT_DIR/.alias-git-completion ]; then
  . $SCRIPT_DIR/.alias-git-completion
fi
