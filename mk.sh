#!/usr/bin/env bash
rm -rf ./out
mkdir out
latexmk --shell-escape -f -pdf -jobname=./out/poster main.tex
