#!/bin/bash

set -o errexit

# Set source flag
SOURCE="${INPUT_SOURCE:-./}"

# Set destination flag
OUTPUT="${INPUT_DESTINATION:-./public}"

main() {
  zola --root "$SOURCE" build --output-dir "$OUTPUT"
}

main "$@"
