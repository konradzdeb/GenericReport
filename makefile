#
# makefile
# Konrad, 2021-11-11 20:04
#

all : main.pdf

preview :
	open main.pdf

main.pdf : main.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make main.tex

clean:
	latexmk -CA


# vim:ft=make
#
