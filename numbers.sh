#!/bin/bash

DATE=$(date)
echo "Todat date is: $DATE"
echo "please find the results below:"

for i in {1..100}
do
    if [ $i -gt 50 ]
    then
        break
    fi
    echo "Line Number : $i"
done