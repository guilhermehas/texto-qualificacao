default: pdf

pdf:
	agda --latex Code.lagda
	if [ ! -f agda.sty ]; then ln latex/agda.sty agda.sty; fi
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
	# rm *.out; \
	# rm *.snm; \
	# rm *.nav \
