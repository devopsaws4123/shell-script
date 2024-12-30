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
    echo -e "$2...failed"
    exit 1
else
    echo -e "$2..is Success"
fi
}

dnf install mysql-server -y >>LOG

FUNCTION $? "installed mysql server"

systemctl enable mysqld >>LOG

FUNCTION $? "Enabled Mysqld" >>LOG

systemctl start mysqld >>LOG

FUNCTION $? "mysql service started"