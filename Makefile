LATEX = pdflatex --shell-escape
BIB = biber

all: main.pdf

main.pdf: main.tex
	$(LATEX) main
	$(BIB) main
	$(LATEX) main
	$(LATEX) main

clean:
	$(RM)  $(PACKAGE).cls *.log *.aux *.pdf \
	*.cfg *.glo *.idx *.toc \
	*.ilg *.ind *.out *.lof \
	*.lot *.bbl *.blg *.gls *.cut *.hd \
	*.dvi *.ps *.thm *.tgz *.zip *.rpi \
	*.bcf *.fdb_latexmk *.fls *.run.xml \
	*.synctex.gz
