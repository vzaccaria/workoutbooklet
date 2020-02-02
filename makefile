
print-all: print-chiara print-vittorio

booklet-%.pdf: output-%.pdf
	vzpdfbook $< -o $@

output-%.pdf: ./workouts-%.json /Users/zaccaria/development/github/org-devtools/vz-clitools/workouts.js /Users/zaccaria/development/github/org-devtools/vz-clitools/fixtures/booklet/workout.tex /Users/zaccaria/development/github/org-devtools/vz-clitools/fixtures/booklet/main.tex
	vz-workouts $< -o $@ 

print-%: ./workouts-%.json /Users/zaccaria/development/github/org-devtools/vz-clitools/workouts.js
	vz-workouts $< -m

kill:
	pkill -f tikz2pdf

clean:
	rm -f tmp-* *.pdf
