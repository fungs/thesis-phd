thesis_files = $(wildcard thesis_*.md)
thesis_config = $(wildcard config/thesis_*.md)
thesis_figures = $(wildcard figure/thesis_*.pdf figure/thesis_*.png)
appendix_files = $(wildcard appendix_*.md)
latex_template_files = $(wildcard template/latex/template_*.latex)
latex_appendix_template_files = $(wildcard template/latex/appendix_*.latex)
bibtex_file = bibliography.bib

all: thesis.pdf

thesis.pdf: $(thesis_config) $(thesis_files) $(thesis_figures) $(bibtex_file) template.latex appendix.latex
	@pandoc $(thesis_config) $(thesis_files) \
		--toc --filter pandoc-shortcaption \
		--filter pandoc-crossref \
		--filter pandoc-citeproc \
		--bibliography $(bibtex_file) \
		--csl template/citationstyle.csl \
		--include-after-body appendix.latex \
		--template template.latex \
		--latex-engine xelatex \
		-o thesis.pdf

template.latex: $(latex_template_files)
	@cat $(latex_template_files) > template.latex

template_appendix.latex: $(latex_appendix_template_files)
	@cat $(latex_appendix_template_files) > template_appendix.latex

appendix.latex: template_appendix.latex $(appendix_files)
	@pandoc $(appendix_files) \
		-f markdown \
		-t latex \
		--filter pandoc-crossref \
		--filter pandoc-citeproc \
		--bibliography $(bibtex_file) \
		--csl template/citationstyle.csl \
		--template template_appendix.latex \
		--top-level-division=chapter \
		-o appendix.latex

clean:
	@rm -f thesis.pdf appendix.latex template.latex template_appendix.latex
