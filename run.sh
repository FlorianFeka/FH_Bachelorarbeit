#!/bin/bash
FILENAME=$1

pdflatex $1.tex && bibtex $1.aux && pdflatex $1.tex && pdflatex $1.tex
sleep 2
rm $FILENAME.aux && rm $FILENAME.bbl && rm $FILENAME.blg && rm $FILENAME.lof && rm $FILENAME.lol && rm $FILENAME.log && rm $FILENAME.lot && rm $FILENAME.toc
