#!/usr/bin/env bash

clear
declare -i numFiles
numFiles=$(find . -maxdepth 1 -not -type d | wc --lines)

function makeValidGuess {
	until read -p "Please enter your guess: " guess;
	[[ "$guess" =~ ^[0-9]+$ ]]; do
		echo -e "Enter unnegative integer!\n"
	done
}
while makeValidGuess; do
	if (( guess < numFiles )); then
		echo -e "\Your guess is too low."
	elif (( guess > numFiles )); then
		echo -e "\Your guess is to high."
	else
		echo -e "\Congratulations! Your guess @numFiles is correct!"
		exit
	fi
done
