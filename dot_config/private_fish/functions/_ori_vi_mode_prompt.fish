function vi_mode_prompt -d "Print the vi mode"
    # Do nothing if not in vi mode
    if test "$fish_key_bindings" = fish_vi_key_bindings
        or test "$fish_key_bindings" = fish_hybrid_key_bindings
        switch $fish_bind_mode
            case default
              echo -n -s (set_color --bold green) '❰'
            case insert
              echo -n -s (set_color --bold magenta) '❱'
            case replace_one
              echo -n -s (set_color --bold green) '❰'
            case replace
              echo -n -s (set_color --bold green) '❰'
            case visual
              echo -n -s (set_color --bold green) '❰'
        end
    else
      set_color --bold gray
      echo -n '❱'
    end

    set_color normal
    echo -n ' '
end
