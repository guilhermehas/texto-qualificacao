default: pdf

pdf:
	latexmk -pdf -use-make main.tex

install: pdf
	mkdir -p $(out)
	cp main.pdf $(out)/texto-qualificacao.pdf

clean:
	rm *.pdf; \
	rm *.log; \
	rm *.aux; \
	rm *latexmk; \
	rm *.toc; \
	rm *.fls; \
	rm -f agda.sty; \
	rm -rf latex; \
	rm *.ptb; \
