#!/bin/bash
file=$1
number=$2

while read line; do
 changedLine=`echo $line | sed "s/0/$number/g"`
 sed -i "s/$line/$changedLine/g" $file || echo $line
done < changes


