eval (/opt/homebrew/bin/brew shellenv)

set -gx LESS_TERMCAP_mb \e'[01;31m'       # begin blinking
set -gx LESS_TERMCAP_md \e'[01;38;5;74m'  # begin bold
set -gx LESS_TERMCAP_me \e'[0m'           # end mode
set -gx LESS_TERMCAP_se \e'[0m'           # end standout-mode
set -gx LESS_TERMCAP_so \e'[38;5;246m'    # begin standout-mode - info box
set -gx LESS_TERMCAP_ue \e'[0m'           # end underline
set -gx LESS_TERMCAP_us \e'[04;38;5;146m' # begin underline

set -x ZF_DEFAULT_COMMAND "fd --type file --color=always"
# set -x ansi --bind ctrl-f:page-down,ctrl-b:page-up --color fg:252,bg:233,hl:67,fg+:252,bg+:235,hl+:81 --color info:144,prompt:161,spinner:135,pointer:135,marker:118"
# set -x FZF_DEFAULT_OPTS $FZF_DEFAULT_OPTS' --ansi --bind ctrl-f:page-down,ctrl-b:page-up --color=fg:#8b949e,bg:#0d1117,hl:#e3b341 --color=fg+:#eeeeee,bg+:#0d419d,hl+:#d29922 --color=info:#87ff00,prompt:#d7005f,pointer:#af5fff --color=marker:#79c0ff,spinner:#af5fff,header:#f0883e'
# catppuccin
set -x FZF_DEFAULT_OPTS "--ansi --bind ctrl-f:page-down,ctrl-b:page-up --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
set -x FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"

set -gx DART_SDK "$HOMEBREW_PREFIX/opt/dart"
set -gx EDITOR "$HOMEBREW_PREFIX/bin/nvim"

set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_DATA_HOME $HOME/.local/share
set -x XDG_CACHE_HOME $HOME/.cache

set -x C_ALL en_US.UTF-8
set -x COLORTERM 24bit

fish_add_path $HOME/bin
# fish_add_path $HOME/bin/nvim/bin
fish_add_path $HOME/Library/Python/3.8/bin

set -gx nvm_data $HOME/.local/share/nvm
set -gx nvm_default_version v16.13.0

