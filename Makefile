thesis_files = $(wildcard thesis_*.md)
thesis_config = $(wildcard config/thesis_*.md)
thesis_figures = $(wildcard figure/thesis_*.pdf figure/thesis_*.png)
latex_template_files = $(wildcard template/latex/template_*.latex)
bibtex_file = references.bib

all: thesis.pdf

thesis.pdf: $(thesis_config) $(thesis_files) $(thesis_figures) $(bibtex_file) template.latex
	@pandoc --filter pandoc-crossref --filter pandoc-citeproc --bibliography bibliography.bib --csl template/citationstyle.csl --template template.latex --latex-engine xelatex -o thesis.pdf $(thesis_config) $(thesis_files)

template.latex: $(latex_template_files)
	@cat $(latex_template_files) > template.latex

clean:
	@rm -f thesis.pdf template.latex
