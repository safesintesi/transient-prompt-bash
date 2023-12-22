# modify prompt
function lastcommand {
    history | tail -1 | cut -c 8-
}
function deleteprompt {
    for i in $(seq $(($(echo "$PS1" | wc -l) + 1)));
    do
        tput cuu 1
        tput el
    done
}

# uncomment this to reset the prompt or edit it to use a different one
# PS1='\[$(tput setaf 6)\]\w\n\[$(tput setaf 2)\]\u@\h\[$(tput sgr0)\] \$ '
PS0='\[$(deleteprompt)\]\$ $(lastcommand)\n\[${PS1:0:$((EXPS0=1,0))}\]'
PROMPT_COMMAND='[ "$EXPS0" = 0 ] && deleteprompt && echo -e "\$" || EXPS0=0'

