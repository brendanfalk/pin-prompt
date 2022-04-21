function _pin_prompt --on-event fish_prompt
	if set -q PIN_PROMPT_NEW_LINE
		echo
	end
	if not set -q PIN_PROMPT_DISABLE
		tput cup $LINES
		set -e _pin_prompt_clear_screen
	else if not set -q _pin_prompt_clear_screen
		set -g _pin_prompt_clear_screen
		clear
	end
end
