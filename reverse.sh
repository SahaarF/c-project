#!/bin/bash
>rev_file

lines=`cat $1 | wc -l`

while [ $lines -gt 0 ]
do
  head -n $lines $1 | tail -n 1 >> rev_file
  lines=`expr $lines - 1`
done
cat rev_file
rm rev_file

