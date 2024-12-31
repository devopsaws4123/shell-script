#!/bin/bash

USERID=$(id -u)

DATE=$(date)
RED="\e[31m"
GREEN="\e[32m"
NORMAL="\e[0m"

if [ $USERID -ne 0 ]
then
    echo "Timestamp: $DATE"
    echo -e "$RED you don't have access to run this file $NORMAL"
    exit 1
fi

dnf list installed mysql
if [ $? -ne 0 ]
then
    echo "mysql was not installed"
    dnf install mysql -y
else
    echo "mysql was installed"
fi