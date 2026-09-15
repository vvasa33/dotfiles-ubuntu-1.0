#!/usr/bin/env bash
# Link this repo's configs into $HOME. Existing files are moved to
# ~/.dotfiles-backup/<timestamp>/ before they are replaced.
set -euo pipefail

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_ROOT="${HOME}/.dotfiles-backup"
STAMP="$(date +%Y%m%d-%H%M%S)"
BACKUP="${BACKUP_ROOT}/${STAMP}"
DID_BACKUP=0

usage() {
  cat <<'EOF'
Usage: ./install.sh [--packages]

  (default)   Symlink configs, scripts, and wallpapers into $HOME
  --packages  Also install packages listed in packages.txt via apt
EOF
}

link_path() {
  local src="$1"
  local dest="$2"

  mkdir -p "$(dirname "$dest")"

  if [[ -L "$dest" ]]; then
    rm -f "$dest"
  elif [[ -e "$dest" ]]; then
    local rel="${dest#"$HOME"/}"
    mkdir -p "$BACKUP/$(dirname "$rel")"
    mv "$dest" "$BACKUP/$rel"
    DID_BACKUP=1
    printf 'backed up %s\n' "$dest"
  fi

  ln -sfn "$src" "$dest"
  printf 'linked   %s -> %s\n' "$dest" "$src"
}

install_links() {
  local name

  for name in hypr waybar kitty wofi swaync nvim gtk-3.0 gtk-4.0 ocean-notepad ocean-calendar; do
    link_path "$DOTFILES/config/$name" "$HOME/.config/$name"
  done

  mkdir -p "$HOME/.local/bin" "$HOME/.local/share/applications" "$HOME/Pictures"

  link_path "$DOTFILES/local/bin/spotify" "$HOME/.local/bin/spotify"
  link_path "$DOTFILES/local/bin/spotify-nowplaying" "$HOME/.local/bin/spotify-nowplaying"
  link_path "$DOTFILES/local/bin/ocean-notepad" "$HOME/.local/bin/ocean-notepad"
  link_path "$DOTFILES/local/bin/ocean-calendar" "$HOME/.local/bin/ocean-calendar"
  link_path "$DOTFILES/local/share/applications/spotify.desktop" \
    "$HOME/.local/share/applications/spotify.desktop"

  link_path "$DOTFILES/home/bashrc" "$HOME/.bashrc"
  link_path "$DOTFILES/home/profile" "$HOME/.profile"
  link_path "$DOTFILES/home/gitconfig" "$HOME/.gitconfig"

  link_path "$DOTFILES/wallpapers/wallpaper.png" "$HOME/Pictures/wallpaper.png"
  link_path "$DOTFILES/wallpapers/wallpaper_arch.png" "$HOME/Pictures/wallpaper_arch.png"

  if [[ "$DID_BACKUP" -eq 1 ]]; then
    printf '\nPrevious files saved in %s\n' "$BACKUP"
  fi
}

install_packages() {
  local pkgs=()
  local line

  while IFS= read -r line || [[ -n "$line" ]]; do
    [[ -z "$line" || "$line" =~ ^[[:space:]]*# ]] && continue
    pkgs+=("$line")
  done < "$DOTFILES/packages.txt"

  sudo apt update
  sudo apt install -y "${pkgs[@]}"
}

case "${1:-}" in
  -h|--help) usage; exit 0 ;;
  --packages) install_packages; install_links ;;
  "") install_links ;;
  *) usage; exit 1 ;;
esac

printf '\nDone. Reload Hyprland with: hyprctl reload\n'
