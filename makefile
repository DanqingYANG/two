#the title of the project: Bash, Make, Git, and GitHub
README.md: guessinggame.sh
	touch README.md
	echo "# The title of the prject" > README.md
	echo $$(date) >> README.md
	echo "The number of lines of code contained in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

#.PHONY: clean
clean:
	rm -f README.md

