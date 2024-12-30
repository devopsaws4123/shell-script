#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "you don't have access to execute this script"
    exit 1
fi

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "you installation has failed"
    exit 1
else
    echo "you installation has failed"
fi