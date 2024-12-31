#!/bin/bash

USERID=$(id -u)
DATE=$(date)

if [ $USERID -ne 0 ]
then
    echo " $DATE You Don't Have Access To Run This File"
    exit 1
fi

dnf install mysql-server -y
if [ $? -eq 0 ]
then
    echo "mysql instaleed succssfully"
else
    exit 1
fi

systemctl enable mysqld
systemctl start mysqld
mysql_secure_installation --set-root-pass ExpenseApp@1