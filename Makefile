BUILD_DIR=out
TEX_SOURCE_NAME=acl_latex

build: template/latex/$(TEX_SOURCE_NAME).pdf

.PHONY: build clean

template/latex/$(TEX_SOURCE_NAME).pdf: template/latex/$(TEX_SOURCE_NAME).tex
	cd template/latex && latexmk -pdf $(TEX_SOURCE_NAME)

clean:
	cd template/latex && latexmk -C && rm *.bbl