.DEFAULT_GOAL := cv

OUTPUT_CLEANER = rm -fv *.log *.aux *.out
LATEX_PACKAGER = grep '^\s*\\usepackage' *.tex *.sty | sed 's/.*{\(.*\)}.*/\1.sty/' | sort | uniq

cv:
	pdflatex main.tex
	pdflatex main.tex # for getting pdf index
	$(OUTPUT_CLEANER)
	mv main.pdf cv.pdf
.PHONY:cv

cover:
	pdflatex cover_letter.tex
	pdflatex cover_letter.tex # not sure if I really need this
	$(OUTPUT_CLEANER)
.PHONY:cover

clean:
	$(OUTPUT_CLEANER)
	rm -fv *.pdf
.PHONY:clean

builder:
	# gotta make this actually do something.
.PHONY:builder
