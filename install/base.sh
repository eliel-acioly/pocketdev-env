#!/usr/bin/env bash

if [[ "$POCKETDEV_ENV" == "termux" ]]; then
  pkg update -y
  pkg install -y git curl wget unzip neovim build-essential
else
  sudo apt update -y
  sudo apt install -y git curl wget unzip neovim build-essential ca-certificates
fi
