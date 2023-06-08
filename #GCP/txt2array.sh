#!/bin/bash
source /home/thquddnr123/.bashrc
cd /home/thquddnr123/AutoCommit/test/

array=($(cat ./imgList.txt))

for element in "${array[@]}"
do
    echo $element
done
