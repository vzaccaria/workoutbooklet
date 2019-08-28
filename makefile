
watch:
	(tikz2pdf -t template.tex test.tex -e xelatex --silent --watch -p &)
	nvim test.tex

kill:
	pkill -f tikz2pdf
