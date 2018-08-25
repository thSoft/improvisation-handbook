main=Anyag.md
commonSettings="--toc --toc-depth=5 -V lang=hu"
pandoc $main $commonSettings --pdf-engine=xelatex -V mainfont="FreeSerif"  -o Nyomtatás.pdf
pandoc $main $commonSettings -t html -s -o Web.html
