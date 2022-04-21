autoload -Uz add-zsh-hook
add-zsh-hook precmd () {
	if [[ -n ${PIN_PROMPT_NEW_LINE+1} ]]; then
		echo
	fi
	tput cup $LINES
}
