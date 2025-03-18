# Pre-Block for startup commands

neofetch

# Path configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/Users/merlinschmidt/.local/bin:$PATH
export PATH=$HOME/Library/Python/3.9/bin:$PATH

# User configuration

# Bindings
bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line

# Aliases
alias ds="docker/sdk"
alias ls="eza"
alias ll="eza -alhF --icons"
alias tree="eza --tree"
alias lg="lazygit"

# Autoloading and Initialization-commands
autoload -Uz compinit && compinit

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

export GPG_TTY=$(tty)
