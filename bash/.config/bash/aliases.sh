# eza
if command -v eza &>/dev/null; then
    alias ls='eza -lh --group-directories-first --icons=auto --time-style="+%F %R"'
    alias lsa='ls -a'
    alias lt='eza --tree --level=2 --long --icons --git'
    alias lta='lt -a'
fi

# fzf
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"

# zoxide
if command -v zoxide &>/dev/null; then
    alias cd="zd"
    zd() {
        if [ $# -eq 0 ]; then
            builtin cd ~ && return
        elif [ -d "$1" ]; then
            builtin cd "$1"
        else
            z "$@" && printf "\U000F17A9 " && pwd || echo "Error: Directory not found"
        fi
    }
fi

open() {
    xdg-open "$@" >/dev/null 2>&1 &
}

# bat
if command -v bat &>/dev/null; then
    alias cat="bat"
fi

# tmux
alias t='tmux attach || tmux new -s Work'

# nvim
n() { if [ "$#" -eq 0 ]; then nvim .; else nvim "$@"; fi; }

# yazi
function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    command yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd <"$tmp"
    [ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
    command rm -f -- "$tmp"
}

export PATH="$HOME/.cargo/bin:$PATH"
