if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x GPG_TTY (tty)
    set -x TERM xterm-256color
    set -g __fish_git_prompt_char_dirtystate '+'
    zoxide init fish | source
end
