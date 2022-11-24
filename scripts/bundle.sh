#!/bin/sh
echo "$CI_COMMIT_TITLE $CI_COMMIT_SHORT_SHA" \
  | sed "s/['\"]//g" \
  | tr '[:upper:]' '[:lower:]' \
  | sed "s/[ \n\t]/-/g" \
  | sed 's/-$//' \
  | sed 's/\./-/' \
  | sed 's/[^a-z0-9_\-]//g'
