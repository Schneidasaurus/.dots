if status is-interactive
	if not set -q TMUX
		if not tmux ls
			systemctl --user start tmux.service
		end
		tmux attach && exit
	end

	# Commands to run in interactive sessions can go here
	set -gx EDITOR nvim
	set -gx BROWSER brave

	set -gx LESS '-R'
	set -gx MANPAGER 'nvim +Man!'

	set -f fish_transient_prompt 1

	# set theme
	fish_config theme choose "TokyoNight Night"

	# aliases
	alias la='eza --long --color=always --icons=always --all --group-directories-first --git'
end
