#!/bin/bash
source /home/thquddnr123/.bashrc
cd /home/thquddnr123/AutoCommit/HelloZOOO/

# 원본 README 복사
cat README_backup.md > README.md

# Create a table with random images
echo "<table>" > table.html
for i in {1..3}; do
    echo "<tr>" >> table.html
    for j in {1..3}; do
        rand_num=$(( $RANDOM % 2001 + 415500 ))
        echo "<td><img src='https://www.random-art.org/img/large/$rand_num.jpg'></td>" >> table.html
    done
    echo "</tr>" >> table.html
done
echo "</table>" >> table.html

# Add the table to README.md file
echo " $(echo -e "<br/>") $(cat table.html)" >> README.md

