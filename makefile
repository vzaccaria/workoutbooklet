
watch:
	(tikz2pdf  -t template.tex test.tex -e xelatex --silent --watch -p --usepackage pgfplots &)
	nvim test.tex

kill:
	pkill -f tikz2pdf

clean:
	rm tmp-*
