#!/bin/bash
python make_starmesh.py
shopt -s nullglob
for f in *.tex
do
	filename=$(basename "$f" .tex)
	pdflatex -interaction nonstopmode $filename.tex
	pdftops -eps $filename.pdf $filename.eps
done
rm *.aux *.auxlock *.dvi *.pdf *.log
