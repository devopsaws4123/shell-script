#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOG_FOLDER_NAME="/var/log/shellscript-log"
DATE=$(date +%Y-%m-%d-%H-%M)
LOG_FILE=$(echo $0 | cut -d "." -f1 )
LOG_FILE_NAME="$LOG_FOLDER_NAME/$LOG_FILE-$DATE.log"

echo "script started at : $DATE"
for package in $@
do 
    dnf list installed $package 
    if [ $? -ne 0 ]
    then
        dnf install $package -y &>>$LOG_FILE_NAME
        echo "$package..installing"
        if [ $? -eq 0 ]
        then 
            echo "$package installed successfully"
        else
            echo "$package installation failed"
        fi
    else 
        echo "$package was already $Y installed $N "
    fi
done