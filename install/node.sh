#!/usr/bin/env bash

if ! command -v node >/dev/null; then
  curl -fsSL https://fnm.vercel.app/install | bash
  export PATH="$HOME/.fnm:$PATH"
  eval "$(fnm env)"
  fnm install --lts
  fnm default lts-latest
fi

if ! command -v pnpm >/dev/null; then
  corepack enable
  corepack prepare pnpm@latest --activate
fi
