num_files=$(ls | wc -l)
n=-1

function echo_read {
	echo "Guess the num_files: "
	read n
	while [[ $n -ne num_files ]]
	do
		if [[ $n -lt num_files ]]
		then
			echo "too low: "
			read n
		elif [[ $n -gt num_files ]]
		then
			echo "too high: "
			read n
		fi
	done
	echo "Correct"
}

echo_read
