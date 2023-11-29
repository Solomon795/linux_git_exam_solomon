#!/bin/bash
grep -coiw function README.md > output/function-keyword-count.txt
grep -Eo '[0-9]' README.md | sort > output/sorted-numbers.txt
grep -A 10000 FEATURES README.md | tr '\n' ' ' >  output/features-summary.txt
grep -E "Calculator" README.md | sort -r > output/calculator-lines.txt3
find output -type f -exec cat {} \;
