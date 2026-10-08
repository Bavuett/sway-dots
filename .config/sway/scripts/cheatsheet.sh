#!/usr/bin/env sh
notify-send -u normal -t 6000 "Cheat Sheet" "$(printf '%s\n' \
  '  Sway Shortcuts:' \
  '' \
  'SUPER+Space: Terminal' \
  'SUPER+E: File Manager' \
  'SUPER+B: Browser' \
  'SUPER+Q: Close Window' \
  'SUPER+F: Floating' \
  'SUPER+R: Resize Mode' \
  'SUPER+V: Clipboard' \
  'SUPER+L: Lock Screen' \
  'SUPER+Shift+C: Reload Sway')"
