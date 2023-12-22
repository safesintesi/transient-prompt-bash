# Transient Bash

Bare bones implementation of transient prompt bash

## How to use

Download the file and append it to the init bash file

```bash
wget https://raw.githubusercontent.com/safesintesi/transient-prompt-bash/main/transient.sh -O - >> ~/.bashrc
```

restart the terminal and you're good to go!

## How it works

The script makes available two new functions:

- deleteprompt: counts how many lines long is the PS1 variable and deletes them;
- lastcommand: returns the last command used, used to create the reduced version of PS1.

## Bugs and support

This has only been tested on Ubuntu 22.10 default terminal with bash.

