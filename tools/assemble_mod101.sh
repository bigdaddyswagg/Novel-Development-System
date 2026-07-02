
#!/bin/bash

OUTPUT="MOD/MOD-101 Module Story Discovery.md"

echo "# MOD-101 Module Story Discovery" > "$OUTPUT"
echo "" >> "$OUTPUT"

FILES=$(find MOD/MOD-101 -name "*.md" | sort)

for f in $FILES; do
  echo "" >> "$OUTPUT"
  echo "---" >> "$OUTPUT"
  echo "" >> "$OUTPUT"
  cat "$f" >> "$OUTPUT"
done

echo "Assembly complete: $OUTPUT"
