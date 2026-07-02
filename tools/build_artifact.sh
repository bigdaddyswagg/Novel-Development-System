#!/bin/bash

set -e

SOURCE_DIR="$1"
OUTPUT_FILE="$2"

if [ -z "$SOURCE_DIR" ] || [ -z "$OUTPUT_FILE" ]; then
  echo "Usage: tools/build_artifact.sh <source-dir> <output-file>"
  exit 1
fi

if [ ! -d "$SOURCE_DIR" ]; then
  echo "ERROR: Source directory not found: $SOURCE_DIR"
  exit 1
fi

FILES=$(find "$SOURCE_DIR" \
  -maxdepth 1 \
  -type f \
  -name "*.md" \
  | sort -V)

if [ -z "$FILES" ]; then
  echo "ERROR: No Markdown source files found in $SOURCE_DIR"
  exit 1
fi

echo "Building: $OUTPUT_FILE"
echo "Source: $SOURCE_DIR"

> "$OUTPUT_FILE"

COUNT=0

for FILE in $FILES; do
  echo "Adding $(basename "$FILE")"
  cat "$FILE" >> "$OUTPUT_FILE"
  echo "" >> "$OUTPUT_FILE"
  COUNT=$((COUNT+1))
done

echo
echo "Build complete."
echo "Files assembled: $COUNT"
echo "Output: $OUTPUT_FILE"