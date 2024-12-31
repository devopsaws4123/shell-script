#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 1001 ]
then
touch user1.txt
    echo "file has been created successfully"
else
    echo "user is not a ec2-user user"
fi

vim user1.txt
i
echo "hi"
esc
:wq!
