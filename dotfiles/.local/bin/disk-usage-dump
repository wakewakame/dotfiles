#!/bin/sh
set -u

# ~/.disk-usage-history/19700101-000000.txt にストレージのファイル一覧をダンプする。
# 表示の単位は KiB となる。
#
# NOTE:
#   $HOME から 2 階層までのディレクトリのみを大きい順に表示する例。
#   grep -E "^[0-9]+\s+${HOME}(\/[^/]+){2}\$" ~/.disk-usage-history/19700101-000000.txt | column -t -s $'\t' | sort -hr

OUT="${HOME}/.disk-usage-history"
mkdir -p "${OUT}"
{ time du -kx / 2>/dev/null; } 2>&1 | tee "${OUT}/$(date '+%Y%m%d-%H%M%S').txt"
