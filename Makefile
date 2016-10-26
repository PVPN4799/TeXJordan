TEXFILE=jordan

.PHONY: all
all: $(TEXFILE).pdf

$(TEXFILE).pdf: $(TEXFILE).tex jordan.sty
	pdflatex $(TEXFILE).tex
	pdflatex $(TEXFILE).tex

.PHONY: clean
clean:
	rm -rf *.aux *.log *.out *.toc

.PHONY: view
view: $(TEXFILE).pdf
	evince $(TEXFILE).pdf