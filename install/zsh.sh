#!/usr/bin/env bash

if ! command -v zsh >/dev/null; then
  if [[ "$POCKETDEV_ENV" == "termux" ]]; then
    pkg install -y zsh
  else
    sudo apt install -y zsh
  fi
fi

if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
  RUNZSH=no CHSH=no sh -c \
    "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

grep -q "aliases.zsh" "$HOME/.zshrc" 2>/dev/null || \
  echo "source \$HOME/pocketdev-env/shell/aliases.zsh" >> "$HOME/.zshrc"
