#!/bin/bash

MERMAID_FILTER_SCALE=5 MERMAID_FILTER_THEME=neutral \
pandoc --table-of-contents --toc-depth=2 --number-sections --top-level-division=chapter -H head.tex \
 --lua-filter=color.lua \
 --filter ghostscript-pandoc-filter --filter mermaid-filter --filter short-title-for-toc.py \
title.md \
'Preface. Marxism-Leninism and the Class Struggle.md' \
Introduction.md \
edition-1/'1. Production.md' \
edition-1/'2. Relations of Production.md' \
edition-1/'3. Productive Forces.md' \
edition-1/'4. The Economic Structure of Society.md' \
edition-1/'5. Base and Superstructure.md' \
edition-1/'6. The Ideological Structure.md' \
edition-1/'7. The Juridico-Political Structure.md' \
edition-1/'8. Mode of Production, Social Formation and Political Conjuncture.md' \
edition-1/'9. Social Classes.md' \
edition-monthly-review/'10. The Class Struggle.md' \
edition-1/'11. The Marxist Theory of History.md' \
edition-1/Appendix-Surplus-Value.md \
 -o book.pdf

# sed -i 's:begin{document}:begin{document}\\includepdf[pages={1}]{/home/izzy/repos/printing/clock/clock.pdf}:' book.tex
#pdflatex book.tex


#'10. The Class Struggle.md' \
