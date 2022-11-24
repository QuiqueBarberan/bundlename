#!/bin/sh
echo "$title $short_sha" \
  | sed "s/['\"]//g" \
  | tr '[:upper:]' '[:lower:]' \
  | sed "s/[ \n\t]/-/g" \
  | sed 's/-$//' \
  | sed 's/\./-/' \
  | sed 's/[^a-z0-9_\-]//g'
