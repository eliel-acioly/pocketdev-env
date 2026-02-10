#!/usr/bin/env bash
set -e

log_info "Instalando Zsh e Starship"

if [[ "$POCKETDEV_ENV" == "termux" ]]; then
  pkg install -y zsh
else
  sudo apt install -y zsh
fi

if ! command -v starship >/dev/null; then
  curl -sS https://starship.rs/install.sh | sh -s -- -y
fi

log_success "Zsh e Starship instalados"
