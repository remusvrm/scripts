#!/bin/bash

# Description
# Compare file cout of two directories
# Author: remus

# check number of arguments
if [[ $# -ne 2 ]]; then
	echo "need exactly two arguments!"
	exit 1
fi

# Both arguments should be directories
if [[ ! -d $1 ]]; then
	echo "'$1' is not a directory!"
	exit 1
fi

if [[ ! -d $2 ]]; then 
	echo "'$2' is not a directory!"
	exit 1
fi

dir1="$1"
dir2="$2"

# get number of files in directories
count_1=$(ls -A1 "$dir1" | wc -l)
count_2=$(ls -A1 "$dir2" | wc -l)

# Which one has the most files?
if [[ $count_1 -gt $count_2 ]]; then
	echo "'${dir1}' has most files!"
elif [[ $count_1 -eq $count_2 ]]; then
	echo "'${dir1}' has the same number of file like '${dir2}'!"
else
	echo "'${dir2}' has most files!"
fi

exit 0