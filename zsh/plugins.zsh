# -----------------------------
# Plugins Zsh (leves e rápidos)
# -----------------------------

ZSH_PLUGINS_DIR="$HOME/.zsh-plugins"

mkdir -p "$ZSH_PLUGINS_DIR"

# Autosuggestions
if [[ ! -d "$ZSH_PLUGINS_DIR/zsh-autosuggestions" ]]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions \
    "$ZSH_PLUGINS_DIR/zsh-autosuggestions"
fi
source "$ZSH_PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh"

# Syntax Highlighting
if [[ ! -d "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting" ]]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting \
    "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting"
fi
source "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# Extra completions
if [[ ! -d "$ZSH_PLUGINS_DIR/zsh-completions" ]]; then
  git clone https://github.com/zsh-users/zsh-completions \
    "$ZSH_PLUGINS_DIR/zsh-completions"
fi

fpath+=("$ZSH_PLUGINS_DIR/zsh-completions/src")
autoload -Uz compinit
compinit
