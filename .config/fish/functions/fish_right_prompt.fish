function fish_right_prompt
	if not contains -- --final-rendering $argv
		set -l remaining $CMD_DURATION
		set -l duration_string ''
		
		set -l sec_ms 1000
		set -l min_ms (math 60 x $sec_ms)
		set -l hour_ms (math 60 x $min_ms)

		set -l hours (math --scale 0 $remaining / $hour_ms)
		if test $hours -gt 0
			set duration_string (string join '' -- $duration_string $hours 'h')
			set remaining (math $remaining % $hour_ms)
		end

		set -l minutes (math --scale 0 $remaining / $min_ms)
		if test $minutes -gt 0
			set duration_string (string join '' -- $duration_string $minutes 'm')
			set remaining (math $remaining % $min_ms)
		end

		set -l seconds (math --scale 0 $remaining / $sec_ms)
		if test $seconds -gt 0
			set duration_string (string join '' -- $duration_string $seconds 's')
			set remaining (math $remaining % $sec_ms)
		end
		set duration_string (string join '' -- $duration_string $remaining 'ms')
		string join '' -- \uf017 ' ' $duration_string
	end
end
