#!/bin/bash

USERID=$(id -u)
DATE=$(date)
R="\e[31m"
N="\e[0m"
LOG="mysql-server $DATE.log"

if [ $USERID -ne 0 ]; then
    echo -e " $R You Don't have access to run this script $N"
    exit 1
fi

FUNCTION(){
if [ $1 -ne 0 ]; then
    echo "$2...failed"
    exit 1
else
    echo "$2..is Success"
fi
}

dnf install mysql-server -y

FUNCTION $? "installed mysql server"

systemctl enable mysqld

FUNCTION $? "Enabled Mysqld"

systemctl start mysqld

FUNCTION $? "mysql service started"