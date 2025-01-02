#!/bin/bash

# set -x
USERID=$(id -u) # it will retrive the user id information

# codes are using for colurs -begin
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
# codes are using for colurs -end
 
LOG_PATH="/home/ec2-user/shell-script/shellscript-logs"    # This is for path of the log file 
FILE=$(echo $0 | cut -d "." -f1)                            # it will retrive the current executing file name
DATE=$(date +%Y-%m-%d-%H-%M-%S)                            #it will print the date time
OUTPUT_LOG="$LOGPATH/$FILE-$DATE.log"                      # Here we are concatinating and storing the log file 

if [ $USERID -ne 0 ]
then
    echo -e " $R You Don't Have Access to Execute This File, Plese Check With Admin Team $N"
fi

echo "$0 has executed at : $DATE"


for service in $@
do
    dnf install $service -y &>>$OUTPUT_LOG
    echo " $service $G Installing $N "
    if [ $? -ne 0 ]
    then
        echo "$service installation has failed"
    else
        echo "$service installed scuccfully"
done