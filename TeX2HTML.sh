#!/bin/sh -eu

file=$1
cp "$file" temp.tex

sed -i 's/\\hangindent=\\parindent//' temp.tex # remove equals sign
  
pandoc -f latex -t html -s -o main.html temp.tex
rm -v temp.tex
firefox main.html
