#!/bin/bash
grep -coiw function README.md > output/function-keyword-count.txt
grep '^#[^#]' README.md | sed 's/^#//' > output/unique-headers.txt
grep -Eo '[0-9]+' README.md | sort -n > output/sorted-numbers.txt
grep -A 1000 FEATURES README.md | sed 's/FEATURES//' | tr '\n' ' ' >  output/features-summary.txt
grep -E "Calculator" README.md | sort -r > output/calculator-lines.txt
find output -type f -exec cat {} \; > output/print_content_of_folder.txt
