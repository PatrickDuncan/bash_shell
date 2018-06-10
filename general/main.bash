GENERAL="${REPO_PATH}/general"

# Prompt improvements
if [ -f "${GENERAL}/prompt.bash" ]; then
  . "${GENERAL}/prompt.bash"
fi

# Vim syntax coloring
if [ -f "${GENERAL}/vimrc" ] &&
   [ ! -f ~/.vimrc ] &&
   [ ! -L ~/.vimrc ]
then
  ln -s "${GENERAL}/vimrc" ~/.vimrc
fi

# Aliases
if [ -f "${GENERAL}/aliases.bash" ]; then
  . "${GENERAL}/aliases.bash"
fi

# Git Completion
if [ -f "${GENERAL}/git-completion.bash" ]; then
  . "${GENERAL}/git-completion.bash"
fi

# Make Git Completion with aliases
if [ -f "${GENERAL}/alias-git-completion.bash" ]; then
  . "${GENERAL}/alias-git-completion.bash"
fi
