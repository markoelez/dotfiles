#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DOTFILES_DIR="$(dirname "$SCRIPT_DIR")"

echo "=== remote box setup ==="
echo ""

# 1. tmux + vim configs
echo "--- installing configs ---"

cp "$DOTFILES_DIR/.tmux.conf" "$HOME/.tmux.conf"
echo "copied .tmux.conf"

cp "$DOTFILES_DIR/.vimrc" "$HOME/.vimrc"
echo "copied .vimrc"

mkdir -p "$HOME/.vim/colors"
cp "$DOTFILES_DIR/peachpuff.vim" "$HOME/.vim/colors/peachpuff.vim"
echo "copied peachpuff.vim"

# append shell settings to .bashrc
{
  echo ""
  echo "export EDITOR='vim'"
  echo "alias vi='vim'"
  echo "set -o vi"
} >> "$HOME/.bashrc"
echo "updated .bashrc"

echo ""

# 2. git config
echo "--- configuring git ---"

git config --global user.name "Marko Elez"
git config --global user.email "markoelez7@gmail.com"
echo "set user.name and user.email"

echo ""

# 3. SSH key
echo "--- generating SSH key ---"

if [ ! -f "$HOME/.ssh/id_ed25519" ]; then
  ssh-keygen -t ed25519 -C "" -f "$HOME/.ssh/id_ed25519" -N ""
  echo ""
  echo "add this key to github:"
  echo ""
  cat "$HOME/.ssh/id_ed25519.pub"
else
  echo "SSH key already exists:"
  echo ""
  cat "$HOME/.ssh/id_ed25519.pub"
fi

echo ""

# 3. Claude Code
echo "--- installing claude code ---"

if command -v claude &>/dev/null; then
  echo "claude code already installed, skipping"
else
  curl -fsSL https://claude.ai/install.sh | bash

  # source the updated PATH so `claude` is available
  export PATH="$HOME/.claude/bin:$PATH"

  echo ""
  echo "run 'claude' to authenticate"
fi

echo ""
echo "=== done ==="
