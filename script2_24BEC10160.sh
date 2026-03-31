#!/bin/bash
PACKAGE="python3"

if command -v dpkg >/dev/null 2>&1; then
  INSTALLED=$(dpkg -l | grep -E "^ii\s+$PACKAGE")
elif command -v rpm >/dev/null 2>&1; then
  INSTALLED=$(rpm -qa | grep -E "^$PACKAGE")
else
  INSTALLED=""
fi

if [ -n "$INSTALLED" ]; then
  echo "$PACKAGE is installed."
else
  echo "$PACKAGE is not installed."
fi

case "$PACKAGE" in
  python3)
    echo "python3: tool for scripting and data workflows"
    ;;
  git)
    echo "git: version control for collaborative development"
    ;;
  vim)
    echo "vim: lightweight editor with custom power"
    ;;
  curl)
    echo "curl: fetch URLs from the command line"
    ;;
  *)
    echo "$PACKAGE: other free/open-source tool"
    ;;
esac
