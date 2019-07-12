#!/bin/bash
set -e

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
tmp="$(mktemp)"
# For some reason the paste and clip tools only work if the working directory
# is in the windows volume
cd /mnt/c
"$dir/bin/paste.exe" | tr -d  > "$tmp"
kak "$tmp"
tr -d  < "$tmp" | clip.exe
