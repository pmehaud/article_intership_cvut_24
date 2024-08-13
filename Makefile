LATEX=rubber --pdf
OUT_DIR=out
INP_DIR=.

FILENAME=article

all:
	$(LATEX) $(FILENAME).tex
	bibtex $(FILENAME)
	makeglossaries $(FILENAME)
	$(LATEX) $(FILENAME).tex

clean:
	rubber --clean $(FILENAME).tex
