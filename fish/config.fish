if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_vi_key_bindings
    set -gx FZF_DEFAULT_OPTS '--height 40% --layout=reverse --border'
    # starship init fish | source
    set fish_greeting
end
