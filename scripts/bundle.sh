#!/bin/sh
TITLE=$(git show -s --format='%h')
SHORT_SHA=$(git show -s --format='%s')
echo "$TITLE $SHORT_SHA" \
  | sed "s/['\"]//g" \
  | tr '[:upper:]' '[:lower:]' \
  | sed "s/[ \n\t]/-/g" \
  | sed 's/-$//' \
  | sed 's/\./-/' \
  | sed 's/[^a-z0-9_\-]//g'
