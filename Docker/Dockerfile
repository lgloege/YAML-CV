FROM debian:stretch
LABEL name="pandoc-pdflatex"
LABEL url="https://github.com/lgloege/YAML-CV"
LABEL version="1.0" 
LABEL maintainer="Luke Gloege <ljg2157@columbia.edu>"
LABEL build_date="2022-01-29"
WORKDIR /root
RUN apt-get update -y && \ 
    apt-get install -y --no-install-recommends texlive-latex-recommended texlive-fonts-recommended && \
    apt-get install -y --no-install-recommends texlive-latex-extra texlive-fonts-extra texlive-lang-all && \
    apt-get install -y vim && \
    apt-get install -y build-essential && \
    apt-get install -y wget && \
    wget https://github.com/jgm/pandoc/releases/download/2.17.0.1/pandoc-2.17.0.1-1-arm64.deb && \
    dpkg -i pandoc-2.17.0.1-1-arm64.deb && \
    wget https://github.com/jgm/pandoc/archive/refs/tags/2.17.0.1.tar.gz && \
    tar xvzf /root/2.17.0.1.tar.gz --strip-components 1 -C /usr/local/ && \
    rm pandoc-2.17.0.1-1-arm64.deb && \
    rm 2.17.0.1.tar.gz && \
    rm -rf /var/lib/apt/lists/*
CMD ["bash"]