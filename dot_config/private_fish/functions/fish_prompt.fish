function fish_prompt --description 'Write out the prompt'
    set -l last_status $status # Export for __fish_print_pipestatus.

    # Color the prompt differently when we're root
    set -l color_cwd $fish_color_cwd
    set -l prefix ''
    if functions -q fish_is_root_user; and fish_is_root_user
        if set -q fish_color_cwd_root
            set color_cwd $fish_color_cwd_root
        end
        set prefix '[#] '
    end

    # Since we display the prompt on a new line allow the directory names to be longer.
    set -q fish_prompt_pwd_dir_length
    or set -lx fish_prompt_pwd_dir_length 0

    # if test -n "$SSH_TTY"
    #     echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
    # end

    # set -l duration "$cmd_duration$CMD_DURATION"
    # if test $duration -gt 100
    #     set duration (math $duration / 1000)s
    # else
    #     set duration
    # end

    set -l shell_level  ''
    if test $SHLVL -ne 1
      set shell_level "[$SHLVL] "
    end


    set -l ls ''
    if test $last_status -ne 0
        set ls (set_color $fish_color_error)" ↲ $last_status"
    end

    printf '\n%s%s%s%s%s%s\n%s' (set_color $color_cwd) $shell_level $prefix (prompt_pwd) $ls (right_prompt) (vi_mode_prompt)
end
