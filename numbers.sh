#!/bin/bash

DATE=$(date)
echo "Todat date is: $DATE"
echo "please find the results below:"

for i in {1..100}
do
    if [ 'expr $i % 3' == 0 ]
    then
        echo $i
    fi
done

for package in 'cat textfile.txt'
do 
    echo "$package installing"

done