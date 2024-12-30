#!/bin/bash

lss -l

if [ $? -ne 0]; then
    echo "entered command has not found"
    exit 1
fi

ls -l

if [ $? -e 0]; then
    echo "please find the results above"
fi