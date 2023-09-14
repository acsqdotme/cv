#!/bin/sh -eu

file=$1
cp "$file" temp.tex

sed -i 's/\\hangindent=\\parindent//' temp.tex # remove equals sign
  
pandoc -f latex -t html -s -o main.html temp.tex

# makes http & https links have target _blank and rel noopener noreferrer
perl -i -0pe 's/(<\W*a\W*[^>]*href=)(["'"'"']http[s]?:\/\/[^"'"'"'>]*["'"'"'])([^>]*>)/$1$2 target="_blank" rel="noopener noreferrer"$3/g' main.html

rm -v temp.tex
firefox main.html
