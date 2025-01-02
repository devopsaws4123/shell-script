#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOG_FOLDER_NAME="/var/log/shellscript-log"
DATE=$(date +%Y-%m-%d)
LOG_FILE=$(echo $0 | cut -d "." -f1 )
LOG_FILE_NAME="$LOG_FOLDER_NAME/$LOG_FILE-$DATE.log"

echo "script started at : $DATE"
for i in {1..10}
do 
    echo $i &>>$LOG_FILE_NAME
done
