#!/usr/bin/env bash
set -e

echo "🚀 PocketDev — Instalando ferramentas essenciais"

# Detectar ambiente
if [[ -n "$TERMUX_VERSION" ]]; then
  ENV="termux"
else
  ENV="linux"
fi

echo "🧠 Ambiente detectado: $ENV"

# ------------------------
# Função utilitária
# ------------------------
install_if_missing() {
  if ! command -v "$1" &>/dev/null; then
    echo "📦 Instalando $1..."
    eval "$2"
  else
    echo "✅ $1 já instalado"
  fi
}

# ------------------------
# Base
# ------------------------
if [[ "$ENV" == "termux" ]]; then
  pkg update -y
  pkg install -y \
    git \
    zsh \
    nodejs-lts \
    python \
    neovim \
    tmux \
    ripgrep \
    fzf \
    bat \
    eza \
    zoxide \
    termux-api

else
  sudo apt update -y
  sudo apt install -y \
    git \
    zsh \
    curl \
    build-essential \
    python3 \
    neovim \
    tmux \
    ripgrep \
    fzf \
    bat \
    eza \
    zoxide
fi

# ------------------------
# PNPM
# ------------------------
install_if_missing pnpm "npm install -g pnpm"

# ------------------------
# Starship Prompt
# ------------------------
install_if_missing starship "curl -sS https://starship.rs/install.sh | sh -s -- -y"

# ------------------------
# Lazygit
# ------------------------
install_if_missing lazygit "
LAZYGIT_VERSION=\$(curl -s https://api.github.com/repos/jesseduffield/lazygit/releases/latest | grep tag_name | cut -d '\"' -f4)
curl -Lo lazygit.tar.gz https://github.com/jesseduffield/lazygit/releases/download/\$LAZYGIT_VERSION/lazygit_\${LAZYGIT_VERSION#v}_Linux_x86_64.tar.gz
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm -f lazygit lazygit.tar.gz
"

echo "✅ Instalação de ferramentas concluída"
