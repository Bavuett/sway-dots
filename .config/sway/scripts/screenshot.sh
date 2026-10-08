#!/usr/bin/env sh
# Region screenshot: saves to ~/Pictures/Screenshots and copies to clipboard.
set -eu

dir="$HOME/Pictures/Screenshots"
mkdir -p "$dir"
file="$dir/$(date +%Y-%m-%d_%H-%M-%S).png"

region="$(slurp)" || exit 0
grim -g "$region" "$file"
wl-copy --type image/png < "$file"
notify-send -i "$file" "Screenshot" "Saved to $file"
