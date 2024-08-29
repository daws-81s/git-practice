#!/bin/bash

SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14} #if $3 is empty, default is 14 days

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

USAGE(){
    echo -e "$R USAGE:: $N sh 19-backup.sh <source> <destination> <days(optional)>"
}
#check the source and destination are provided

if [ $# -lt 2 ]
then
    USAGE
fi

if [ ! -d $SOURCE_DIR ]
then
    echo "$SOURCE_DIR does not exist...Please check"
fi

if [ ! -d $DEST_DIR ]
then
    echo "$DEST_DIR does not exist...Please check"
fi

FILES=$(find ${SOURCE_DIR} -name "*.log" -mtime +14)

if [ -n $FILES ]
then
    echo "Files are found"
else
    echo "No files older than $DAYS"
fi