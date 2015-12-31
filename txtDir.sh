#! /bin/bash

#Help text
function helpMsg()
{
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
	echo ""
}


echo "> Welcome to TxtToDir"
echo "> Text files must be formatted as described in README.md"

command="null"

while [[ $command != [Qq] ]]; do
	read -p "> Please issue a command (h for help): " command
	case "$command" in 
		[Hh]* ) helpMsg;;
		[Nn]* ) echo "no";;
		[Qq]* ) echo "Goodbye!";;
		* ) echo "invalid";;
	esac
done

