#!/bin/bash

USERID=$(id -u)
DATE=$(date)
R="\e[31m"
N="\e[0m"


if [ $USERID -ne 0 ]; then
    echo -e " $R You Don't have access to run this script $N"
    exit 1
fi

FUNCTION(){
if [ $1 -ne 0 ]; then
    echo -e "$2...failed" 2>&1 | tee 
    exit 1
else
    echo -e "$2..is Success" 2>&1 | tee 
fi
}

dnf install mysql-server -y 

FUNCTION $? "installed mysql server"

systemctl enable mysqld 

FUNCTION $? "Enabled Mysqld" 

systemctl start mysqld 

FUNCTION $? "mysql service started"

PROCESS=$(ps -ef | grep mysql)

echo "$PROCESS"