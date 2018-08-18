#!/bin/bash

OS="${1}"
REPO_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -f "${HOME}/.bashrc" ]; then
  login_script="${HOME}/.bashrc"
else
  login_script="${HOME}/.bash_profile"
fi

echo "# PatrickDuncan's bash shell"                                    >> ${login_script}
echo "[ -f ${REPO_PATH}/main.bash ] && . ${REPO_PATH}/main.bash ${OS}" >> ${login_script}

echo "I've been installed to ${login_script}"
