#! /bin/bash

#This clears the terminal when printed 
# Source: https://stackoverflow.com/questions/5367068/clear-the-ubuntu-bash-screen-for-real
alias clear='printf "\033c"'

#Legend text, for use with plan.txt
function legend(){
	echo "Format your plan.txt file to look like this:"
	echo ""
	echo "Legend:"
	echo "--------------------------------------------------------------------------------"
	echo ".txt representation		| Folder's relation to provided root dir"
	echo "--------------------------------------------------------------------------------"
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
	echo "--------------------------------------------------------------------------------"
	echo "etc..."
	echo "Starting from provided rootDir, with your desired folder names."
}

#Help msg
function helpMsg(){
	echo "Commands:"
	echo "--------------------------------------------------------------------------------"
	echo "	c	Clear:		Clears the terminal"
	echo "	h	Help:		Displays this message"
	echo "	l	Legend:		Displays legend, formatting for plan.txt"
	echo "	p	Pres dir:	Prints present root directory"
	echo "	s	Set dir:	Prompts user for new root directory"
	echo "	q	Quit:		Quits and prints Goodbye!"
	echo "--------------------------------------------------------------------------------"
}

#Print working directory
function printDir(){
	echo "Present working directory:"
	pwd
}

#Set root path
##TODO: Sanitize input, validate before execution
function setPath(){
	
	#Initialize $yn for the while loop below
	yn="null"
	
	while [[ $yn != [Yy] ]]; do
	
		printDir;
		echo ""
		read -p "> Please provide desired root directory: " path
		echo ""
		echo "Root dir:" $path
		echo ""
		read -p "> Is that correct? (Y/N): " yn
		case $yn in
			[Yy]* ) cd $path; break;;
			[Nn]* ) echo "";;
			* ) echo "Please answer yes or no.";;
		esac
	done
}

echo ""
echo "--------------------------------------------------------------------------------"
echo "Welcome to TxtToDir"
echo "Text files must be formatted as described in README.md"
echo "--------------------------------------------------------------------------------"

#Initialize $command for the while loop below
command="null"

#Until user tries to quit, take commands. Command is not case-sensitive.
while [[ $command != [Qq] ]]; do
	echo ""
	read -p "> Please issue a command (h for help): " command
	echo ""
	case "$command" in
		[Cc]* ) clear;;									#Clear the terminal
		[Hh]* ) helpMsg;;								#Print help message
		[Ll]* ) legend;;								#Print legend (for plan.txt)
		[Pp]* ) printDir;;
		[Ss]* ) setPath;;								#Take a path for rootDir
		[Qq]* ) echo "Goodbye!" && echo "";;			#Terminate
		* ) echo "Invalid command, try h for help";;	#Invalid, try another command
	esac
done
