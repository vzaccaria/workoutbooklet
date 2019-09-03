
output.pdf:
	vz-workouts ./workouts.json -o output.pdf

kill:
	pkill -f tikz2pdf

clean:
	rm tmp-*
