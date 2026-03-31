#!/bin/bash
LOGFILE="$1"
KEYWORD="$2"

if [ -z "$LOGFILE" ] || [ -z "$KEYWORD" ]; then
  echo "Usage: $0 logfile keyword"; exit 1
fi

if [ ! -f "$LOGFILE" ]; then
  echo "file missing: $LOGFILE"; exit 2
fi

count=0
matches=()
while IFS= read -r line; do
  if echo "$line" | grep -qi -- "$KEYWORD"; then
    count=$((count+1)); matches+=("$line")
  fi
done < "$LOGFILE"

echo "$count matches"
printf '%s\n' "${matches[@]}" | tail -n 5
