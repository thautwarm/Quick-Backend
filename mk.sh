#!/usr/bin/env bash
rm -rf ./out
mkdir out
latexmk -pdf -jobname=./out/poster main.tex
