#!/bin/bash
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

for d in "${DIRS[@]}"; do
  if [ -d "$d" ]; then
    PERMS=$(ls -ld "$d" | awk '{print $1, $3, $4}')
    SIZE=$(du -sh "$d" 2>/dev/null | awk '{print $1}')
    echo "$d -> $PERMS -> $SIZE"
  else
    echo "$d missing"
  fi
done

if [ -d "/etc/python" ]; then
  echo "/etc/python perms: $(ls -ld /etc/python | awk '{print $1}')"
else
  echo "/etc/python not found"
fi
