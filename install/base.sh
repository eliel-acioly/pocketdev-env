#!/usr/bin/env bash
set -e

log_info "Instalando ferramentas base"

if [[ "$POCKETDEV_ENV" == "termux" ]]; then
  pkg update -y
  pkg install -y \
    git \
    zsh \
    curl \
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

log_success "Base instalada"
