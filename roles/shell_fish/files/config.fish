if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting  # отключить ненужное приветствие fish

pay-respects fish --alias | source
zoxide init fish | source
direnv hook fish | source

abbr -a trm trash
abbr -a cd z
abbr -a py python3

eval (ssh-agent -c) > /dev/null  # настройка SSH-агента
if not set -q SSH_CONNECTION
    set -x SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"
end
eval (keychain --eval --quiet)