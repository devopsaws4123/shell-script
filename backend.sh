#!/bin/bash

USERID=$(id -u)

DATE=$(date)
LOG="backend-$DATE.log"
RED="\e[31m"
GREEN="\e[32m"
NORMAL="\e[0m"
LOG1="backend-${DATE}.log"
if [ $USERID -ne 0 ]; then
    echo -e "$RED you don't have access to run this file $NORMAL"
    exit 1
fi


BACKEND(){
if [ $1 -ne 0 ]; then
    echo -e "$2.. $RED failed $NORMAL"
else
    echo -e "$2..$GREEN Success $NORMAL"
fi
}

dnf module disable nodejs -y >>LOG1
BACKEND $? "Disabling node js"

dnf module enable nodejs:20 -y >>LOG1
BACKEND $? "Enable node js"
dnf install nodejs -y >>LOG1
BACKEND $? "Intsalling node js"
useradd expense
BACKEND $? "user added"
mkdir /app >>LOG1
BACKEND $? "directory changed"
curl -o /tmp/backend.zip https://expense-builds.s3.us-east-1.amazonaws.com/expense-backend-v2.zip  -y >>LOG1
BACKEND $? "files downloaded"
cd /app >>LOG1
BACKEND $? "directory changed"
unzip /tmp/backend.zip -y >>LOG1
BACKEND $? "unzipped files"
cd /app >>LOG1
BACKEND $? "directory changed"
npm install >>LOG1
BACKEND $? "installed dependent packages"