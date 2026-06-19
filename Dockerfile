FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    texlive-full \
    msttcorefonts \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /CV

COPY CV/ .

CMD ["xelatex", "-interaction=nonstopmode", "main.tex"]