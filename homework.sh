#!/bin/bash

if [ -z "$1" ] # -z signifies a test for an empty string in shell --> if empty then its not there, looking to see if you actually specified something after the original code in terminal
then 
    echo "No file was specified."
else
    echo "file is specified $1"

    if [ -f "$1" ] # -f signifies a test for a regular file in shell--> if you gave something to look for does it exist?
    then
        echo "File $1 exists."
        du -h "$1" # display file size in the human redable format if it exists
        wc -l "$1" # display the number of lines in the file if it exists
        wc -c "$1" # display the number of characters in the file if it exists
        grep -c "ATATATAT" "$1" # display the number of lines that contain the string ATATATAT in the file if it exists
    else
        echo "File $1 does not exist."
    fi
fi

