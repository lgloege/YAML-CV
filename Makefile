pdf: 
	mkdir -p build/pdf
	cp templates/pdf/cv-class.cls build/pdf
	cp refs.bib build/pdf
	pandoc data.md --pdf-engine pdflatex --template templates/pdf/cv-template.tex -o build/pdf/cv.tex
	cd build/pdf && pdflatex cv.tex && bibtex cv && pdflatex cv.tex && pdflatex cv.tex
	cd build/pdf && rm -f *.log *.aux *.out *.bbl *.blg
	cp build/pdf/cv.pdf .
	
clean-pdf:
	rm -rf build/pdf
	

