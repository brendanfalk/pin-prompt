autoload -Uz add-zsh-hook
add-zsh-hook precmd () {  [[ -n ${PIN_PROMPT_NEW_LINE+1} ]] && echo; tput cup $LINES } 
