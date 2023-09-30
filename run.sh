#!/bin/bash
FILENAME=$1

rm "$FILENAME.pdf"; rm "$FILENAME.aux"; rm "$FILENAME.bbl"; rm "$FILENAME.blg"; rm "$FILENAME.lof"; rm "$FILENAME.lol"; rm "$FILENAME.log"; rm "$FILENAME.lot"; rm "$FILENAME.toc"
sleep 2
pdflatex "$FILENAME.tex" && sleep 8 && bibtex "$FILENAME.aux" && sleep 8 && pdflatex "$FILENAME.tex" && sleep 8 && pdflatex "$FILENAME.tex"
sleep 2
rm "$FILENAME.aux"; rm "$FILENAME.bbl"; rm "$FILENAME.blg"; rm "$FILENAME.lof"; rm "$FILENAME.log"; rm "$FILENAME.toc"; rm "$FILENAME.lot"
