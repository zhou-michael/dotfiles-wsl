function fish_user_key_bindings
    fzf_key_bindings
    for mode in insert default visual
        bind -M $mode \cf accept-autosuggestion
    end

    alias rm="rm -i"
end
