#!/usr/bin/bash
while find . -name 'resume.tex' | xargs inotifywait -qqre modify .; do         latexmk -pdf -auxdir=build -emulate-aux-dir ;       done
