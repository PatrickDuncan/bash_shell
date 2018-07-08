## Bash Shell Customizations

Tired of typing out commonly used commands like `git status`?

Tired of your shell not doing basic things like removing duplicates from your history?

Look no further!

### Requirements

* You shell must be `bash`
* `git` must be installed

### Usage

Add this to the bottom of your `.bash_profile` or `.bashrc`:

```bash
if [ -f <PATH_TO_THIS_REPO>/main.bash ]; then
    . <PATH_TO_THIS_REPO>/main.bash [OPERATING_SYSTEM]
fi
```
  - *[OPERATING_SYSTEM] is optional, you will only get `general` if you omit it*
  - *[OPERATING_SYSTEM] must be one of the folders in this repo (other than `general`)*

### Credits

* [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)
* [Git Completion](https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash)
