if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting  # Disable unneeded fish greeting

if type -q pay-respects
    pay-respects fish --alias | source
end

if type -q zoxide
    zoxide init fish | source
    abbr -a cd z
end

if type -q direnv
    direnv hook fish | source
end

if type -q trash
    abbr -a trm trash
else if type -q trash-put
    abbr -a trm trash-put
end

if type -q python3
    abbr -a py python3
end

if type -q keychain
    eval (keychain --eval --quiet)
end
