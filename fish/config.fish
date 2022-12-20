if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_vi_key_bindings
    set -gx FZF_DEFAULT_OPTS '--height 40% --layout=reverse --border'
    # starship init fish | source
    set fish_greeting
    alias cd = 'echo "Command not working right now, please come back later" ||'
    alias rm = 'echo "Command not working right now, please come back later" ||'
    alias ls = 'echo "Command not working right now, please come back later" ||'

    set -Ua fish_user_paths $HOME/.cargo/bin
end
