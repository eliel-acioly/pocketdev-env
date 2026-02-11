# PocketDev Zsh Config

export ZDOTDIR="$HOME"

# Starship
eval "$(starship init zsh)"


# Plugins
source "$HOME/pocketdev-env/zsh/plugins.zsh"

# PocketDev Aliases
source "$HOME/pocketdev-env/zsh/aliases.zsh"

# Zoxide
eval "$(zoxide init zsh)"

autoload -Uz compinit
compinit

# History
HISTSIZE=10000
SAVEHIST=10000
setopt share_history
