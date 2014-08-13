.PHONY: paper.pdf all clean

all: paper.pdf

paper.pdf:
		latexmk \
			-pdf \
			-pdflatex="pdflatex -interactive=nonstopmode" \
			-use-make \
			paper.tex

clean:
		rm paper.bbl
		latexmk -CA
