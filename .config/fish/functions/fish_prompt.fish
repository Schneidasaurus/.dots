function fish_prompt --description 'Write out the prompt'
    if not contains -- --final-rendering $argv
        # configure git_promt output
        set -g __fish_git_prompt_show_informative_status 1
        set -g __fish_git_prompt_showdirtystate 1
        set -g __fish_git_prompt_showupstream 1
        set -g __fish_git_prompt_showcolorhints 1

        set -l git_output
        echo
        if git status -s >/dev/null 2>&1
            set git_output (string join '' -- ' ' \uf105 (fish_git_prompt))
        end
        string join '' -- \uf108 ' ' (prompt_hostname) ' ' \uf105 ' ' (set_color blue) (prompt_pwd) (set_color normal) $git_output
    end
    string join '' -- (set_color purple) \u276d ' ' (set_color normal)
end
