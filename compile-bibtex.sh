#!/bin/bash
cd ./doc/chapters

rm *.aux
cd ..
rm *.pdf
pdflatex main.tex
bibtex main.tex
pdflatex main.tex
