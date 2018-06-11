# Ignores duplicates in bash history (extend the life of your up arrow)
export HISTCONTROL=ignoreboth:erasedups

# Stops autocompleting files when using cd and rmdir
complete -d cd
complete -d rmdir

# Prompt visuals
BRANCH() { # Get current git branch
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
FOLDER_COLOR() { # Change the folder and $ colour depending on the weekday
  expr $(date +%u) - 1
}
export PS1="\[\033[1;3\$(FOLDER_COLOR)m\]\W\[\033[1;36m\]\$(BRANCH)\[\033[1;3\$(FOLDER_COLOR)m\]$\[\033[m\] "
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad
