function fish_right_prompt
	if not contains -- --final-rendering $argv
		string join '' -- \uf017 ' ' (math --scale 3 $CMD_DURATION / 1000) 's'
	end
end
