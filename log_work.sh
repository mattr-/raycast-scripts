#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Daily Note Worklog
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 📝
# @raycast.argument1 { "type": "text", "placeholder": "What did you do?", "percentEncoded": false }

# Documentation:
# @raycast.description Log work to my daily note
# @raycast.author Matt Rogers
# @raycast.authorURL https://github.com/mattr-

text=$1
current_date=$(date "+%Y-%m-%d")
file_location="$HOME/Library/Mobile Documents/com~apple~CloudDocs/Obsidian/Obsidian/Dailies/$current_date.md"

echo "- $text" >> "$file_location"
