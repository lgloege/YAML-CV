#=============================================================================
# Compiles CV using pandoc, pdflate, and bibtex.
# pandoc and yaml are used for templating
# pdflatex and bibtex convert compiled tex file to pdf
#
# Commands:
# make           --> compile from previously generated files (if any)
# make clean     --> removes all previous files (keeps pdf)
# make clean-all --> removes all files and pdfs
#
# Constands:
# TEMPLATE  --> template file for yaml input
# PROJECT   --> name of compiled tex file
# YAML      --> contains CV in yaml format
# TEX       --> which tex distro. are you compiling with?
# BIBTEX    --> for compiling bibtex references
# BUILDTEX  --> compile tex document
#
# L. Gloege 2014
#============================================================================

#----------------------
# CONSTANTS
#----------------------
TEMPLATE=cv-template
PROJECT=cv
YAML=cv-data
TEX=pdflatex
BIBTEX=bibtex
BUILDTEX=$(TEX) $(PROJECT).tex

all:
	pandoc $(YAML).yml --template $(TEMPLATE).tex -o $(PROJECT).tex
	$(BUILDTEX)
	$(BIBTEX) $(PROJECT)
	$(BUILDTEX)
	$(BUILDTEX)
	rm $(PROJECT).blg
	rm $(PROJECT).bbl
	rm $(PROJECT).aux
	rm $(PROJECT).log
	open $(PROJECT).pdf

clean-all:
	rm -f *.log *.aux *.out *.pdf *.bbl *.blg

clean:
	rm -f *.log *.aux *.out *.bbl *.blg
