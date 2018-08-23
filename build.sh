main=Anyag.md
tocDepth=4
pandoc $main --toc --toc-depth=$tocDepth --pdf-engine=xelatex -V mainfont="FreeSerif" -o Nyomtatás.pdf
pandoc $main --toc --toc-depth=$tocDepth -t html -s -o Web.html
