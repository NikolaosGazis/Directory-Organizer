#!/bin/bash
# Project 1 - Subject 1 - Name: Nikolaos Gazis / AM: 2121231.

# Question 1.
# 1st argument given by the user.
if [ ! -d "$1" ];
then
	echo "•Folder: $1 does not exist. Creating..."
	mkdir $1
else
	echo "•Folder $1 already exists. Moving on..."
fi

# Question 2.
# 2nd and 3rd arguments given by the user.
if [ ! -d "$2" ]; then
	echo "•Folder $2 does not exist. Creating..."
	mkdir $2
else
	echo "•Folder $2 already exists. Moving on..."
fi

if [ ! -d "$3" ]; then
	echo "•Folder $3 does not exist. Creating..."
	mkdir $3
else
	echo "•Folder $3 already exists. Moving on..."
fi

# Question 3.
# Move all files to each folder according to the beginning letter.
echo "•Initiating moving files according to the parameters..."

for file in [A-La-l]*; # Files going to the 2nd Argument Folder.
do
	[[ -f $file && $file != *.sh ]] && mv "${file}" $2 # If file spotted and its extension its not '.sh' in order to ignore the shell script, move that file to the 2nd Argument folder.
done

for file in [M-Zm-z]*; # Files going to the 3rd Argument Folder.
do
	[[ -f $file && $file != *.sh ]] && mv "${file}" $3 # If file spotted and its extension its not '.sh' in order to ignore the shell script, move that file to the 3rd Argument folder.
done

echo "•All files moved to their repsective folders."

# Question 4.
# Print in how many files the 2nd and 3rd argument folders contain.
ls $2 | echo "$2 Contains: $(wc -l) file(s)."
ls $3 | echo "$3 Contains: $(wc -l) file(s)."
exit 0
