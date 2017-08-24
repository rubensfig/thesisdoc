#!/bin/bash
cd ./doc/chapters

rm *.aux
cd ..
rm *.pdf

pdflatex -interaction=nonstopmode -output-directory . main.tex 
bibtex main.tex
pdflatex -interaction=nonstopmode -output-directory .. main.tex

make clean

cd ..
rm *.log *.aux *.toc
