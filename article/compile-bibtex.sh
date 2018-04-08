#!/bin/bash
rm main.pdf
rm *.aux

pdflatex -interaction=nonstopmode main.tex 
bibtex main.aux
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex

make clean

rm *.log *.aux *.toc
