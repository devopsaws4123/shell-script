#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 1001]
then
touch user.txt
else
    echo "user is not a root user"
fi