#!/bin/sh
title=$(git show -s --format='%h')
short_sha=$(git show -s --format='%s')
echo "$title $short_sha" \
  | sed "s/['\"]//g" \
  | tr '[:upper:]' '[:lower:]' \
  | sed "s/[ \n\t]/-/g" \
  | sed 's/-$//' \
  | sed 's/\./-/' \
  | sed 's/[^a-z0-9_\-]//g'
