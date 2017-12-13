#!/bin/bash
rm main.pdf
cd ./doc/

rm *.aux

pwd

pdflatex -interaction=nonstopmode  main.tex 
bibtex main.aux
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex

make clean

cd ..
rm *.log *.aux *.toc
