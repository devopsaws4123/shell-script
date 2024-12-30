#!/bin/bash

USERID=$(id -u)
dnf install git -y
if [ $USERID -ne 0 ]; then
    echo "you don't have access to execute this script, please contact sysadm"
fi