# modify prompt
function lastcommand {
    history | tail -1 | cut -c 8-
}
function deleteprompt {
    for i in $(fgrep -o '\n' <<< $PS1'\n')
    do
        tput cuu 1
        tput el
    done
}

DIR_PROMPT="\[$(tput setaf 6)\]\w"
GIT_PROMPT="\[$(tput setaf 5)\]$(git --version &> /dev/null && echo -n '$(__git_ps1)')"

# comment this to reset the prompt or edit it to use a different one
PS1=$DIR_PROMPT" "$GIT_PROMPT"\n\[$(tput setaf 2)\]\u@\h\[$(tput sgr0)\] \$ "

PS0='\[$(deleteprompt)\]\$ $(lastcommand)\n\[${PS1:0:$((EXPS0=1,0))}\]'
PROMPT_COMMAND='[ "$EXPS0" = 0 ] && deleteprompt && echo -e "\$" || EXPS0=0'

