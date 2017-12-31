## Bash Shell Backup
### Usage
1. Add the `.bashrc` to your `$HOME`
2. Add this to your `.bash_profile` to interpolate the `.bashrc`

  ```
  if [ -f $HOME/.bashrc ]; then
      source $HOME/.bashrc
  fi
  ```
