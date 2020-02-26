#!/usr/bin/env bash
cd poster
rm -rf ./out
mkdir out
latexmk -f -pdf -jobname=./out/poster main.tex
mv ./out/poster.pdf ../poster.pdf  
cd ..

