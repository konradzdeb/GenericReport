#
# makefile
# Konrad, 2021-11-11 20:04
#

all : main.pdf

preview :
	open main.pdf


# As xelatex is used to compile the pdflatex switch is not relevant but it's kept for posterity


main.pdf : main.tex
	latexmk -pdf -xelatex -use-make main.tex
	# latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make main.tex

clean:
	latexmk -CA


# vim:ft=make
#
