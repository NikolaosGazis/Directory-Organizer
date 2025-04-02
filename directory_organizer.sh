#!/bin/bash

# Checks and create the Directory given by the user's first argument #
if [ ! -d "$1" ];
then
	echo "[SYSTEM] Directory: $1 does not exist. Creating..."
	mkdir $1
else
	echo "[SYSTEM] Directory $1 already exists. Moving on..."
fi

# Checks and create the Directories by the user's second and third argument #
if [ ! -d "$2" ]; then
	echo "[SYSTEM] Directory $2 does not exist. Creating..."
	mkdir $2
else
	echo "[SYSTEM] Directory $2 already exists. Moving on..."
fi

if [ ! -d "$3" ]; then
	echo "[SYSTEM] Directory $3 does not exist. Creating..."
	mkdir $3
else
	echo "[SYSTEM] Directory $3 already exists. Moving on..."
fi

# Move all files to appropriate directory based on the initial letter of the file #
echo "[SYSTEM] Initiating moving files according to the parameters..."

for file in [A-La-l]*; # Files from A-L moved to the second argument directory.
do
	[[ -f $file && $file != *.sh ]] && mv "${file}" $2
done

for file in [M-Zm-z]*; # Files from M-Z moved to the third argument directory.
do
	[[ -f $file && $file != *.sh ]] && mv "${file}" $3
done

echo "[SYSTEM] All files moved to their respective folders!"

# Count and display the number of files in each of the directories #
file_count_2=$(ls "$2" | wc -l)
file_count_3=$(ls "$3" | wc -l)

echo "$2 Contains: $file_count_2 file(s)."
echo "$3 Contains: $file_count_3 file(s)."

exit 0
