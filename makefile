default: pdf

pdf:
	# agda --latex Code.lagda
	latexmk -pdf -use-make main.tex

install: pdf
	mkdir -p $(out)
	cp main.pdf $(out)/texto-qualificacao.pdf

clean:
	rm *.pdf; \
	rm *.log; \
	rm *.out; \
	rm *.aux; \
	rm *latexmk; \
	rm *.toc; \
	rm *.fls; \
	rm *.ptb; \
	rm *.snm; \
	rm *.nav \
	|| true
