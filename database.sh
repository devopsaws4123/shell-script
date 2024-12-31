#!/bin/bash

USERID=$(id -u)

DATE=$(date)
RED="\e[31m"
GREEN="\e[32m"
NORMAL="\e[0m"

if [ $USERID -ne 0 ]
then
    echo "Timestamp: $DATE"
    echo -e " $RED you don't have access to run this file $NORMAL"
fi