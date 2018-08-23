#!/bin/bash

pdflatex thesis_jakob_staab20180514.tex
biber thesis_jakob_staab20180514
pdflatex thesis_jakob_staab20180514.tex

mupdf thesis_jakob_staab20180514.pdf &
