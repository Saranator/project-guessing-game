#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {

	response=0
	while [[ $response -lt 5 ]] || [[ $response -gt 5 ]]
	do
		echo "How many files do you think are in the current directory?"
		read response

		if [[ $response -gt 5 ]]
		then
			echo "Too high. Try again!"
		elif [[ $response -lt 5 ]]
		then
			echo "Too low. Try again!"
		else
			echo "Correct!"
		fi
	done
}
