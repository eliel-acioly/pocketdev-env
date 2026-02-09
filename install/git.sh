#!/usr/bin/env bash

git config --global init.defaultBranch main
git config --global pull.rebase false

if [[ -z "$(git config --global user.name)" ]]; then
  read -p "Nome para commits Git: " GIT_NAME
  git config --global user.name "$GIT_NAME"
fi

if [[ -z "$(git config --global user.email)" ]]; then
  read -p "Email para commits Git: " GIT_EMAIL
  git config --global user.email "$GIT_EMAIL"
fi
