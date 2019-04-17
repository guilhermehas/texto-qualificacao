default: pdf

pdf:
	agda --latex Code.lagda

install: pdf
	mkdir -p $(out)/tex
	mv latex $(out)/tex
