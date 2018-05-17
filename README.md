## Bash Shell Backup
### Usage
Add this to your `.bash_profile` to interpolate the dot files:
```
if [ -f <PATH-TO-THIS-REPO>/.bashrc ]; then
    source <PATH-TO-THIS-REPO>/.bashrc
fi
```
### Credits
* [Git Completion](https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash)

#### Disclaimer
* This bash profile was created for macOS. Most of the commands/options should work with other implementations of shell.
