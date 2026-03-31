#!/bin/bash
read -p "Preferred tool? " tool
read -p "What is freedom in open source? " meaning
read -p "What will you build? " project
DATE=$(date '+%d%B%Y')
OUTFILE="manifesto_$(whoami).txt"
cat > "$OUTFILE" <<EOF
Open Source Manifesto - $DATE
I prefer $tool.
Freedom is $meaning.
I will build $project.
EOF
cat "$OUTFILE"
