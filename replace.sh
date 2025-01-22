#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <replacement_word>"
    exit 1
fi

replacement="$1"

# Rename the tauri crate
if [ -d "./crates/trdm-tauri" ]; then
    mv "./crates/trdm-tauri" "./crates/${replacement}-tauri"
fi

# Replace in program files
find . -type f \( -name "*.toml" -o -name "*.json" -o -name "*.rs" -o -name ".taurignore" \) \
    -not -name "steps.md" \
    -not -path "*/\.*" \
    -exec sed -i "s/trdm/$replacement/g" {} +