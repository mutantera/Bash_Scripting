#!/bin/bash/

if [ "$#" -ne 3 ]; then
	echo "Usage: $0 <number_of_words> <separator> <wordlist_path>"
	exit 1
fi

passwd_word_count=$1
separator=$2
wordlist_path=$3

password=""

if [ ! -f "$wordlist_path" ]; then
	echo "Error: Word list file not found at $worldlist_path"
	exit 1
fi

total_word_count=$(wc -l < "$wordlist_path")
if [ "$total_word_count" -eq 0 ]; then
	echo "Error: Word list file is empty."
	exit 1
fi

for (( i=1; i<=$passwd_word_count; i++)); do
	rand_num_hex=$(openssl rand -hex 4)
	rand_num_dec=$((16#$rand_num_hex))

	word_index=$((rand_num_dec % total_word_count + 1))
	random_word=$(awk -v idx="$word_index" 'NR==idx {print $1}' "$wordlist_path")

	if [ -z "$random_word" ]; then
		echo "Error: Unable to retrive word $word_index."
		exit 1
	fi

	random_word_upper=$(echo "${random_word^}")

	if [ ${#password} -gt 0 ]; then
		password="$password$separator$random_word_upper"
	else
		password="$random_word_upper"
	fi
done

echo "$password"
