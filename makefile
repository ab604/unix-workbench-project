#!/usr/bin/env bash
# File: makefile for guessinggame.sh
# A.Bailey 29th Sep 2017
# The title of the project.
# The date and time at which make was run.
# The number of lines of code contained in guessinggame.sh.
nlines=$(shell wc -l guessinggame.sh | egrep -o "[0-9]+")
tod=$(shell date)

README.md:
	touch README.md
	echo "# Unix workbench guessing game readme" >> README.md
	echo "Make run on: $(tod)" >> README.md
	echo "There are $(nlines) lines in guessinggame.sh" >> README.md

clean:
	rm README.md
