#!/usr/bin/env bash
{ set +x; } 2>/dev/null

[[ $OSTYPE != *"darwin"* ]] && echo "SKIP: not MacOS" && exit

script="${BASH_SOURCE[0]%/*}"/script.sh
app=/tmp/name.app
set -- "$script" "$app"

( set -x; appify "$@" ) || exit
( set -x; find "$app" -mindepth 1 )
