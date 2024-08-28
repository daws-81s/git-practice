#!/bin/bash

SOURCE_DIR=/home/ec2-user/logs

if [ -d $SOURCE_DIR ]
then
    echo "$SOURCE_DIR Exists"
else
    echo "$SOURCE_DIR does not exist"
    exit 1
fi

