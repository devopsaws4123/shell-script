#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "You Don't have access to run this script"
    exit 1
if

FUNCTION(){
if [ $1 -ne 0 ]; then
    echo "$2...failed"
    exit 1
else
    echo "$2..is Success"
if
}

dnf install mysql-server -y
FUNCTION $? "installed mysql server"

systemctl enable mysqld
FUNCTION $? "Enabled Mysqld"

systemctl start mysqld
FUNCTION $? "mysqld service started"