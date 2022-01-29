<h1 align='center'>Yet Another YAML CV</h1>
<h2 align='center'>Content is YAML / Design is LaTeX</h1>

A CV with the design in LaTeX and the data stored in an easy to read/modify YAML file. 
This repository requires [pandoc](https://pandoc.org/) and pdflatex, which is included with [tex live](https://tug.org/texlive/).

+ ```data.md```  = CV data in YAML format
+ ```refs.bib``` = bib file for publications
+ ```Makefile``` = compiles the the CV using pandoc

Modify `data.md` and `refs.bib` and then build your CV:
```
make pdf
```

This will create the `build` directory with your compiled CV stored in `/build/pdf/cv.pdf`.

To clean the build directory
```
make clean-pdf
```

# Docker
a Docker image with all the necessary software installed is included. This provides a convenient way to use YAML-CV without having to worry about installing all the necessary packages. Here are the steps using Docker.

1. Clone the GitHub repo:
```bash
git clone https://github.com/lgloege/YAML-CV.git
```

2. Pull the image (this image is a little hefty at 2.7 GB)
```bash
docker pull ghcr.io/lgloege/pandoc-pdflatex:1.0
```

3. Run the image and connect the a host volume. If you use the command below make you are starting base directory and not `/Docker`
```bash
docker run -it -v $(pwd):/root ghcr.io/lgloege/pandoc-pdflatex:1.0
```

4. Manipulate the data files and build your CV.
```
make pdf
```

5. your CV will be in `/build/pdf/cv.pdf`. You may not be able to open it from the container. But don't worry, if you have a connected volume then the changes will persist.

# Directories
## Templates
This directory contains CV templates. This currently only has templates to create a PDF.

+ ```cv-class.cls``` = cv class
+ ```cv-template.tex``` = cv latex template

## Build
Thid directory is created after running `make`.
It contains all the compiled material to create your CV

+ ```cv-class.cls``` = CV class copied from `/templates` 
+ ```refs.bib``` = bibtex file copied from base directory
+ ```cv.tex``` = compiled LaTeX file
+ ```cv.pdf``` = PDF created using `pdflatex`
  
# Notes
Since input is in YAML, you may have to escape some characters, such as `:`

Currently this only compiles to PDF. additions are include compilation to other formats such as HTML
