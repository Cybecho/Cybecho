#!/bin/bash 
source /home/thquddnr123/.bashrc 
cd /home/thquddnr123/AutoCommit/HelloZOOO/ 

urls=(
    "https://github.com/HelloZOOO"
    "https://github.com/HelloZOOO2"
    "https://github.com/HelloZOOO3"
    "https://github.com/HelloZOOO4"
    "https://github.com/HelloZOOO5"
    "https://github.com/HelloZOOO6"
    "https://github.com/HelloZOOO7"
    "https://github.com/HelloZOOO8"
    "https://github.com/HelloZOOO9"
)

while true; do
    # copy origin README 
    cat ./README_origin.md > ./README.md

    # Generate random value and add to URL
    echo "<table>" > ./table.html
    for i in {1..3}; do
        echo "<tr>" >> ./table.html
        for j in {1..3}; do
            rand_num=$(( $RANDOM % 2001 + 415500 ))
            echo "<td><a href='$(shuf -e "${urls[@]}")'><img src='https://www.random-art.org/img/large/$rand_num.jpg'></a></td>" >> ./table.html
        done
        echo "</tr>" >> ./table.html
    done
    echo "</table>" >> ./table.html

    # Paste file info on README.md
    echo " $(echo -e "<br/>") $(cat ./table.html)" >> ./README.md

    sleep 1800 # 30분 대기
done#


























