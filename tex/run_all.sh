#!/bin/bash
pdflatex -interaction nonstopmode *.tex
pdftops -eps *.pdf
pdftops -jpg *.pdf
rm *.aux *.auxlock *.dvi *.pdf *.log
