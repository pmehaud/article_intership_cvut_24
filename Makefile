CMD=pdflatex
BIB_CMD=bibtex
OUT_DIR=out
INP_DIR=.

all:
	$(CMD) -output-directory $(OUT_DIR) $(INP_DIR)/article.tex
	$(BIB_CMD) $(OUT_DIR)/article
	$(CMD) -output-directory $(OUT_DIR) $(INP_DIR)/article.tex
	$(CMD) -output-directory $(OUT_DIR) $(INP_DIR)/article.tex

clean:
	rm -f ./$(OUT_DIR)/*
