main=Anyag.md
commonSettings="--toc --toc-depth=5 -V lang=hu"
pandoc $main $commonSettings --pdf-engine=xelatex --filter pandoc-latex-color -V mainfont="FreeSerif" --include-in-header=preamble.latex -V colorlinks -o "Stílusimprovizációs gyakorlatgyűjtemény.pdf"
pandoc $main $commonSettings -t html -s -o index.html
