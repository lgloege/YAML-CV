<h1 align='center'>Yet Another YAML CV</h1>

A CV with the design in LaTeX and the data stored in an easy to read/modify YAML file. 

+ ```data.md```  = CV data in YAML format
+ ```refs.bib``` = bib file for publications
+ ```Makefile``` = compiles the the CV using pandoc

You should not need to modify the `Makefile`. You will only need to modify `data.md` and `refs.bib`. 

Build the CV:
```
make pdf
```

This will create the `build` directory. Your compiled CV will be stored `/build/pdf/cv.pdf`.

To clean the build directory
```
make clean-pdf
```

## Templates
This directory contains templates to compile your
#### PDF templates
+ ```cv-class.cls``` = cv class
+ ```cv-template.tex``` = cv latex template

## Build
Thid directory is created when you make the CV.
It contains all the compiled material to create your CV

+ ```cv-class.cls``` = CV class copied from `/templates` 
+ ```refs.bib``` = bibtex file copied from base directory
+ ```cv.tex``` = compiled LaTeX file
+ ```cv.pdf``` = PDF created using `pdflatex`
  
# Notes
Since input is in YAML, you may have to escape some characters, such as `:`

Currently this only compiles to PDF. additions are include compilation to other formats such as HTML
