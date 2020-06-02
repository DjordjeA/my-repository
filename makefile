README.md:
	touch README.md
	echo -e "# Title of README.md\n" >> README.md
	echo "Date and time: " >> README.md
	date >> README.md
	echo "" >> README.md
	echo "Number of lines: " >> README.md
	less guessinggame.sh | wc-l >> README.md
