# Transient Bash

Bare bones implementation of transient prompt bash

## How to use

Download the file and append it to the init bash file

```bash
wget https://raw.githubusercontent.com/safesintesi/transient-prompt-bash/main/transient.sh -O - >> ~/.bashrc
```

Restart the terminal and you're good to go!
If you want to have a different prompt you can just edit `PS1` in your `.bashrc`.

## How it works

The script makes available two new functions:

- deleteprompt: counts how many lines long is the PS1 variable and deletes them;
- lastcommand: returns the last command used, used to create the reduced version of PS1.

Those functions are used to delete the prompt and rewrite it.

## Bugs and support

This has only been tested on Ubuntu 22.10 default terminal with bash.
This does not work with oh-my-posh.
If you find out bugs or you want to contribute this repo is open to new issues and pull requests.

