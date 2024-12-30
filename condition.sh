#!/bin/bash

ls -lt
DATE=$(date)
if [ $? -ne 0 ]; then
    echo "entered command has not found"
    exit 1
fi
echo "$DATE"
ls -la

if [ $? -ne 0 ]; then
    echo "please find the results above"
fi