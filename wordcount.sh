#!/bin/bash

num=1
echo " Lines    Words"

while read line
do
words=`echo "$line" | wc -w`
echo "$num   :  $words"
num=`expr   $num + 1`
done < $1

