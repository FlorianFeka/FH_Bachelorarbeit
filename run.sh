#!/bin/bash
FILENAME=$1

pdflatex $1.tex && bibtex $1.aux && pdflatex $1.tex && pdflatex $1.tex