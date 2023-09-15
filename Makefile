.DEFAULT_GOAL := cv

OUT_CLEAN = rm -fv *.log *.aux *.out

cv:
	pdflatex main.tex
	$(OUT_CLEAN)
	mv main.pdf angel_cv_$(shell date -I).pdf
.PHONY:cv

cover:
	pdflatex cover_letter.tex
	$(OUT_CLEAN)
.PHONY:cover

clean:
	$(OUT_CLEAN)
	rm -fv *.pdf
.PHONY:clean
