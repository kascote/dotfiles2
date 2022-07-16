switch (uname)
case Linux
case Darwin
case '*'
end

set FZF $HOMEBREW_PREFIX/opt/fzf

if status is-interactive
  source "$FZF/shell/key-bindings.fish"

    # Commands to run in interactive sessions can go here
  fish_vi_key_bindings
  fzf_key_bindings


  # Set the normal and visual mode cursors to a block
  set fish_cursor_default block
  # Set the insert mode cursor to a line
  set fish_cursor_insert line
  # Set the replace mode cursor to an underscore
  set fish_cursor_replace_one underscore
  # The following variable can be used to configure cursor shape in
  # visual mode, but due to fish_cursor_default, is redundant here
  set fish_cursor_visual block

  set -g fish_color_cwd fac27d #7adcfa #5ca8ff
  set -g fish_color_cwd_root fa6e6e

  set -g __fish_git_prompt_show_informative_status 1
  set -g __fish_git_prompt_hide_untrackedfiles 1

  set -g __fish_git_prompt_color_branch magenta bold
  set -g __fish_git_prompt_showupstream "informative"
  set -g __fish_git_prompt_char_upstream_ahead "↑"
  set -g __fish_git_prompt_char_upstream_behind "↓"
  set -g __fish_git_prompt_char_upstream_prefix ""

  set -g __fish_git_prompt_char_stagedstate "●"
  set -g __fish_git_prompt_char_dirtystate "✚"
  set -g __fish_git_prompt_char_untrackedfiles "…"
  set -g __fish_git_prompt_char_conflictedstate "✖"
  set -g __fish_git_prompt_char_cleanstate "✔"

  set -g __fish_git_prompt_color_dirtystate blue
  set -g __fish_git_prompt_color_stagedstate yellow
  set -g __fish_git_prompt_color_invalidstate red
  set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal
  set -g __fish_git_prompt_color_cleanstate green bold

  zoxide init fish | source

end
