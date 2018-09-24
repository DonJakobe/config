#!/bin/bash

NAME=$1

pdflatex ${NAME}.tex
biber ${NAME}
pdflatex ${NAME}.tex

mupdf ${NAME}.pdf &
