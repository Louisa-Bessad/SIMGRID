.PHONY: all clean

all: clean Rapport_Stage.pdf
clean:
	rm -f *.aux *.out *.toc *.nav *.log  Rapport_Stage.pdf

Rapport_Stage.pdf: src/skeleton.tex
	@xelatex $< 
	@xelatex $<
	mv skeleton.pdf Rapport_Stage.pdf