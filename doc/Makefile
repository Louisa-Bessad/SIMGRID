.PHONY: all clean

all: clean Presentation_Stage.pdf # Rapport_Stage.pdf
clean:
	rm -f *.aux *.out *.toc *.nav *.log *.b* Rapport_Stage.pdf

# Rapport_Stage.pdf:
# 	@xelatex src/skeleton 
# 	@bibtex skeleton
# 	@xelatex src/skeleton
# 	@xelatex src/skeleton
# 	mv skeleton.pdf Rapport_Stage.pdf

Presentation_Stage.pdf:
	pdflatex src/presentation.tex
	pdflatex src/presentation.tex
