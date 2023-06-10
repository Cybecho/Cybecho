#!/bin/bash
source /home/sbu/.bashrc
cd /home/sbu/AutoCommit/test/

array=($(cat ./imgList.txt))

for element in "${array[@]}"
do
    echo $element
done
