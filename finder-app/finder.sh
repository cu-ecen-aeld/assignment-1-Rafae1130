#bin/bash

cd

if [ $# -ne 2 ]
then
	echo "incorrect number of arguments"
	exit 1
fi
 
if [ -d "$1" ]
then
	echo "directory present"
else
	echo "direc not found"
	exit 1
fi


cd $1

NUM_OF_LINE=$(grep -r "$2" * | wc -l)

NUM_OF_FILES=$(find "$1" -type f | wc -l)
echo "The number of files are ${NUM_OF_FILES} and the number of matching lines are ${NUM_OF_LINE}"
