#! /bin/bash

#Legend text, for use with plan.txt
function legend(){
	echo "Format your plan.txt file to look like this:"
	echo ""
	echo "Legend:"
	echo "------------------------------------------------------------------------"
	echo ".txt representation		| Folder's relation to provided root dir"
	echo "------------------------------------------------------------------------"
	echo "-1				| /1"
	echo "--1A				| /1/1A"
	echo "---1Aa				| /1/1A/1Aa"
	echo ""
	echo "-Sample2			| /2"
	echo "--Sample2A			| /2/2A"
	echo "--Sample2B			| /2/2B"
	echo "--Sample2C			| /2/2C"
	echo ""
	echo "-Sample3			| /3"
	echo "------------------------------------------------------------------------"
	echo "etc..."
	echo "With your desired folder names."
}

#Help msg
function helpMsg(){
	echo "Commands:"
	echo "------------------------------------------------------------------------"
	echo "	h	displays this message"
	echo "	l	displays the legend, formatting fors plan.txt"
	echo "	q	quits and prints Goodbye!"
	echo "------------------------------------------------------------------------"
}

#Set root path
function setPath(){
	read -p "> Please provide a path (desired root dir): " path
}

echo "> Welcome to TxtToDir"
echo "> Text files must be formatted as described in README.md"
echo ""

#Initialize $command for the while loop below
command="null"

#Until user tries to quit, take commands. Command is not case-sensitive.
while [[ $command != [Qq] ]]; do
	read -p "> Please issue a command (h for help): " command
	echo ""
	case "$command" in 
		[Hh]* ) helpMsg;;								#Print help message
		[Ll]* ) legend;;								#Print legend (for plan.txt)
		[Pp]* ) setPath;;								#Take a path for rootDir
		[Qq]* ) echo "Goodbye!";;						#Terminate
		* ) echo "Invalid command, try h for help";;	#Invalid, try another command
	esac
	echo ""
done


