#!/bin/bash/

files=$(find . -type f)

echo "$files" | xargs du -h | sort -hrk 1 | awk '{print $2 " (" $1 ")"}'
