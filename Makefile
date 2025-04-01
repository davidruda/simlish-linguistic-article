BUILD_DIR=out
TEX_SOURCE_NAME=acl_latex

build: template/latex/$(TEX_SOURCE_NAME).pdf

.PHONY: build clean

# https://stackoverflow.com/questions/3477292/what-do-and-do-as-prefixes-to-recipe-lines-in-make
# The - prefix keeps the target running even if the command fails (bibtex produces errors normally)
template/latex/$(TEX_SOURCE_NAME).pdf: template/latex/$(TEX_SOURCE_NAME).tex
	cd template/latex && latexmk -pdf $(TEX_SOURCE_NAME)

clean:
	cd template/latex && latexmk -C && rm *.bbl