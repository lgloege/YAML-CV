#=============================================================================
# USE THIS MAKEFILE TO COMPILE YOUR THESIS
#
# Commands:
# make           --> compile from previously generated files (if any)
# make clean     --> removes all previous files (keeps pdf)
# make clean-all --> removes all files and pdfs 
# 
# Constands:
# PROJECT   --> name of output file
# TEX       --> which tex distro. are you compiling with?
# BIBTEX    --> for compiling bibtex references
# BUILDTEX  --> compile tex document
#
# L. Gloege 2014
#============================================================================

#----------------------
# CONSTANTS
#----------------------
PROJECT=main
TEX=pdflatex
BIBTEX=bibtex
BUILDTEX=$(TEX) $(PROJECT).tex

all:
	$(BUILDTEX)
#	$(BIBTEX) $(PROJECT)
#	$(BUILDTEX)
#	$(BUILDTEX)
	open $(PROJECT).pdf
clean-all:
	rm -f *.log *.aux *.out *.pdf

clean:
	rm -f *.log *.aux *.out
