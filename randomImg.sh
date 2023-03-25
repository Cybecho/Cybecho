#!/bin/bash
source /home/thquddnr123/.bashrc
cd /home/thquddnr123/AutoCommit/HelloZOOO/

# copy origin README 
cat ./README_origin.md > ./README.md

# Generate random value and add to URL
echo "<table>" > ./table.html
for i in {1..3}; do
    echo "<tr>" >> ./table.html
    for j in {1..3}; do
        rand_num=$(( $RANDOM % 2001 + 415500 ))
        echo "<td><img src='https://www.random-art.org/img/large/$rand_num.jpg'></td>" >> ./table.html
    done
    echo "</tr>" >> ./table.html
done
echo "</table>" >> ./table.html

# Paste file info on README.md
echo " $(echo -e "<br/>") $(cat /home/thquddnr123/AutoCommit/HelloZOOO/table.html)" >> ./README.md

