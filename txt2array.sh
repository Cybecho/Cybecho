#!/bin/bash
source /home/ubuntu/.bashrc
cd /home/ubuntu/AutoCommit/test/

array=($(cat ./imgList.txt))

for element in "${array[@]}"
do
    echo $element
done
