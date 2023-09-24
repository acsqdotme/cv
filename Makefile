.DEFAULT_GOAL := cv

OUT_CLEAN = rm -fv *.log *.aux *.out
LATEX_PACKAGER = grep '^\s*\\usepackage' *.tex *.sty | sed 's/.*{\(.*\)}.*/\1.sty/' | sort | uniq

cv:
	pdflatex main.tex
	pdflatex main.tex # for getting pdf index
	$(OUT_CLEAN)
	mv main.pdf cv.pdf
.PHONY:cv

cover:
	pdflatex cover_letter.tex
	$(OUT_CLEAN)
.PHONY:cover

clean:
	$(OUT_CLEAN)
	rm -fv *.pdf
.PHONY:clean

builder:
	# gotta make this actually do something.
.PHONY:builder
