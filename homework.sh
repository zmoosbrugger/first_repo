#!/bin/bash

#if [ -z "$1" ] # -z signifies a test for an empty string in shell --> if empty then its not there, looking to see if you actually specified something after the original code in terminal
#then 
#    echo "No file was specified."
#else
#    echo "file is specified $1"
#
#    if [ -f "$1" ] # -f signifies a test for a regular file in shell--> if you gave something to look for does it exist?
#    then
#        echo "File $1 exists."
#        du -h "$1" # display file size in the human redable format if it exists
#        wc -l "$1" # display the number of lines in the file if it exists
#        wc -c "$1" # display the number of characters in the file if it exists
#        grep -c "ATATATAT" "$1" # display the number of lines that contain the string ATATATAT in the file if it exists
#   else
#       echo "File $1 does not exist."
#    fi
#fi
echo "$1" #argument is what is passed in the command line after the script name, so if you run ./argument.sh hello, then $1 is hello

if [[ $1 ]]
then
    echo "Whoop this works:)"
    listing=$(ls -l "$1")
    echo "$listing"
    listing=$(du -h "$1")
    echo "size human readable: $listing"
    listing=$(wc -l "$1")
    echo "line count: $listing"
    listing=$(wc -m "$1")
    echo "character count: $listing"
    listing=$(grep -c "ATATATAT" "$1")
    echo "number of lines with "ATATATAT": $listing"
else
    echo "This is not a text file, please provide a file name."
fi
