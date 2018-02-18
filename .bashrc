SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Ignores duplicates in bash history (extend the life of your up arrow)
export HISTCONTROL=ignoreboth:erasedups

# Stops autocompleting files when using cd and rmdir
complete -d cd
complete -d rmdir

# Prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\033[1;33m\]\W\[\033[1;36m\]\$(parse_git_branch)\[\033[1;33m\]$\[\033[m\] "
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Include the files in this repository
. $SCRIPT_DIR/.include_files
