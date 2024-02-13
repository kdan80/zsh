# Prompt
eval "$(starship init zsh)"

# Print a newline before prompt except the very first prompt
function precmd() {
    if [ -z "$NEW_LINE_BEFORE_PROMPT" ]
    then
        NEW_LINE_BEFORE_PROMPT=1
    elif [ "$NEW_LINE_BEFORE_PROMPT" -eq 1 ]
    then
        echo ""
    fi
}


# PATH
export PATH="$HOME/.local/share/bin:$PATH:$HOME/.config/composer/vendor/bin"

# Aliases
alias reload='source ~/.zshrc'
alias diff='diff --color=auto'
alias ip='ip --color=auto'
alias ls='ls -CF --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias npm='pnpm'

# Autocomplete
autoload -U compinit; compinit

# Keymapping
bindkey "^[[3~" delete-char
