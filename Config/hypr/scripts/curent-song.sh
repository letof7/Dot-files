#!/bin/bash

set -e

ARTIST=$(playerctl metadata artist)
TITLE=$(playerctl metadata title)

if [ -z "$ARTIST" ]; then
  echo "  $TITLE"
else
  echo "  $ARTIST — $TITLE"
fi
