#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {
	files="$(ls -1 | wc -l)"
	response=0
	while [[ $response -lt $files ]] || [[ $response -gt $files ]]
	do
		echo "How many files do you think are in the current directory?"
		read response

		if [[ $response -gt $files ]]
		then
			echo "Too high. Try again!"
		elif [[ $response -lt $files ]]
		then
			echo "Too low. Try again!"
		else
			echo "Correct!"
		fi
	done
}
guessinggame
