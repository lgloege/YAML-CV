<h1 align='center'>YAML-CV + Docker</h1>

This provides a convenient way to use YAML-CV without having to worry about installing all the necessary packages.

1. Clone the GitHub repo:
```bash
git clone https://github.com/lgloege/YAML-CV.git
```

2. Pull the image
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
