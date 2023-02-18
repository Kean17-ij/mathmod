# FILES = $(patsubst %.md, %.docx, $(wildcard *.md))
FILES += $(patsubst %.md, %.pdf, $(wildcard *.md))

FILTERS =
PDF_ENGINE =
PDF_OPTIONS =
PDF_FORMAT_OPTIONS = -t beamer --slide-level=2

# FILTERS += -F pandoc-citeproc
FILTERS += -F pandoc-crossref
PDF_ENGINE += --pdf-engine=lualatex
PDF_OPTIONS += --number-sections

%.docx: %.md
	-pandoc "$<" $(FILTERS) -o "$@"

%.pdf: %.md
	-pandoc "$<" $(FILTERS) $(PDF_ENGINE) $(PDF_OPTIONS) $(PDF_FORMAT_OPTIONS) -o "$@"

%.pdf: %.docx
	-unoconv "$<" "$@"

all: $(FILES)
	@echo $(FILES)

clean:
	-rm $(FILES) *~

cleanall: clean
