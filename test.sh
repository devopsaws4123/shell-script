#!/bin/bash

PWD=$(pwd)

echo "You are here: $PWD"

touch testing2.txt
FILE=$(ls testing2.txt)
if [ $? -ne 0 ]
then
    echo "files has not been created"
else
    echo "File has been created successfully: $FILE"
fi