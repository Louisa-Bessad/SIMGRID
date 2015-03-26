BIN=./bin
SRC=./src
TEX=pdflatex
PROJECT=resume
REPORT=BESSAD_Pre_Rapport
all: dir
	BUILDTEX= $(TEX) -output-directory $(BIN) -jobname $(REPORT) $(SRC)/$(PROJECT).tex
dir:
	@mkdir -p $(BIN)
clean:
	rm -f $(BIN)/*
