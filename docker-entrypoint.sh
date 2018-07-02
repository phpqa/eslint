#!/usr/bin/env sh
set -e

if [ "$(printf %c "$1")" = '-' ]; then
  set -- /sbin/tini -- eslint "$@"
elif [ "$1" = "eslint" ]; then
  set -- /sbin/tini -- "$@"
elif [ -d "$1" ]; then
  set -- /sbin/tini -- eslint "$@"
fi

exec "$@"
