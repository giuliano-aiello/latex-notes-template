#!/bin/zsh

if [ $# -ne 1 ]
then
  echo "Usage: ./render.sh main.tex"
  exit 1
fi

filename=$(echo "$1" | sed 's/\..*//')

pdflatex --shell-escape --file-line-error --synctex=1 $1
biber $filename
makeglossaries $filename
pdflatex --shell-escape --file-line-error --synctex=1 $1
pdflatex --shell-escape --file-line-error --synctex=1 $1
