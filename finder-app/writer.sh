#bin/bash

DIR_NAME="$(dirname ${1})"

echo  "$DIR_NAME"
if [ $# -ne 2 ]
then
	echo "incorrect number of arguments"
	exit 1
fi
 
if [ -d "$DIR_NAME" ]
then
	echo "directory present"
else
	mkdir -p "${DIR_NAME}" && touch "${1}"
	
fi

echo "$2" > ${1}






