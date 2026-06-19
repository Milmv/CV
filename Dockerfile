FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    texlive-full \
    fonts-liberation \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /cv

COPY CV/ .

RUN xelatex -interaction=nonstopmode main.tex