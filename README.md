## Bash Shell Backup
### Usage
Add this to your `.bash_profile` to interpolate the `.bashrc`:
```
if [ -f <PATH-TO-THIS-REPO>/.bashrc ]; then
    source <PATH-TO-THIS-REPO>/.bashrc
fi
```
