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
PROJECT=./templates/cv
YAML=cv-data
TEX=pdflatex
BIBTEX=bibtex
BUILDTEX=$(TEX) $(PROJECT).tex
TEMPLATES = $(shell find templates -type f)
BUILD = build
MAKEFILE = Makefile
CHAPTERS = cv-data.yml
BASE_DEPENDENCIES = $(MAKEFILE) $(CHAPTERS) $(TEMPLATES)
# Chapters content
CONTENT = awk 'FNR==1 && NR!=1 {print "\n\n"}{print}' $(CHAPTERS)
CONTENT_FILTERS = tee # Use this to add sed filters or other piped commands
PDF_ARGS = --template templates/$(TEMPLATE).tex --pdf-engine pdflatex

copy: 
	cp templates/cv-class.cls build
	cp refs.bib build
	cp templates/boldauthorname.tex build

pdf: 
	mkdir -p build/pdf
	cp templates/cv-class.cls build/pdf
	cp refs.bib build/pdf
#	cp templates/boldauthorname.tex build
	pandoc data.md --pdf-engine pdflatex --template templates/cv-template.tex -o build/pdf/cv.tex
	cd build/pdf && pdflatex cv.tex && bibtex cv && pdflatex cv.tex && pdflatex cv.tex
	cd build/pdf && rm -f *.log *.aux *.out *.bbl *.blg
	
clean-pdf:
	rm -rf build/pdf
	

