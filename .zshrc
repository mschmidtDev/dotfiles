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

# Functions 
function customTree() {
		if [ $1 != "" ]
		then
				eza -a --color=always --icons=always --hyperlink --tree --level=$1
		else
				eza -a --color=always --icons=always --hyperlink --tree --level=3
		fi
}

# Aliases
alias ds="docker/sdk"
alias ls="eza"
alias ll="eza -alhF --long --color=always --icons=always --hyperlink"
alias tree=customTree
alias lg="lazygit"
alias bm="bulk-move"

# Autoloading and Initialization-commands
# autoload -Uz compinit && compinit

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

export GPG_TTY=$(tty)

# bun completions
[ -s "/Users/merlinschmidt/.bun/_bun" ] && source "/Users/merlinschmidt/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export ANTHROPIC_MODEL="claude-opus-4-5-20251101"
