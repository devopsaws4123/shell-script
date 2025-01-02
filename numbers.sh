#!/bin/bash

DATE=$(date)
echo "Todat date is: $DATE"
echo "please find the results below:"



if [ 'expr $i % 3' == 0 ]
then
    echo $i
fi

for package in 'cat textfile.txt'
do 
    echo "$package installing"

done