#!/bin/bash
# Compile LaTeX to PDF
# Usage: ./scripts/compile_tex.sh <input.tex> [output_dir]

set -e

INPUT="$1"
OUTPUT_DIR="${2:-output/pdf}"

if [[ -z "$INPUT" ]]; then
    echo "Usage: $0 <input.tex> [output_dir]"
    exit 1
fi

if [[ ! -f "$INPUT" ]]; then
    echo "Error: $INPUT not found"
    exit 1
fi

mkdir -p "$OUTPUT_DIR"

FILENAME=$(basename "$INPUT" .tex)

# Run pdflatex twice for references
pdflatex -interaction=nonstopmode -output-directory="$OUTPUT_DIR" "$INPUT"
pdflatex -interaction=nonstopmode -output-directory="$OUTPUT_DIR" "$INPUT"

# Clean auxiliary files
rm -f "$OUTPUT_DIR"/*.aux "$OUTPUT_DIR"/*.log "$OUTPUT_DIR"/*.out "$OUTPUT_DIR"/*.toc

echo "Output: $OUTPUT_DIR/$FILENAME.pdf"
