#!/bin/bash

DATE=$(date)
echo "Todat date is: $DATE"
echo "please find the results below:"

for i in {1..10}
do
    if [ $i -eq 5]
    then
        break
    fi
    echo "$i"
done