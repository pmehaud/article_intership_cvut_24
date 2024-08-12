CMD=pdflatex
OUT_DIR=out
INP_DIR=.

all:
	$(CMD) -output-directory $(OUT_DIR) $(INP_DIR)/article.tex

clean:
	rm -f ./$(OUT_DIR)/*
