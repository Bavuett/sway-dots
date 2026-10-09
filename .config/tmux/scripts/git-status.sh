#!/bin/sh
# Ramo git della cartella passata come argomento; "*" se ci sono modifiche.
cd "$1" 2>/dev/null || exit 0
b=$(git symbolic-ref --short -q HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null) || exit 0
[ -n "$(git status --porcelain --ignore-submodules 2>/dev/null | head -n1)" ] && b="$b*"
printf '  %s' "$b"
