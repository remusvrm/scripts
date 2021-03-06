#!/bin/bash

# Description
# Simple note-taking script
# Author: Remus

# get the date
date=$(date)

# get the topic
topic="$1"

# filename to write to
filename="${HOME}/workspace/${topic}note.txt"

# Ask user for imput
read -p "Your notes: " note

if [[ $note ]]; then
	echo "$date: $note" >> "$filename"
	echo "Note '$note' saved to $filename!" 
else
	echo "No input; note wasn't saved."
fi
