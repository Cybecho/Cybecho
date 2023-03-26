#!/bin/bash 
source /home/thquddnr123/.bashrc 
cd /home/thquddnr123/AutoCommit/HelloZOOO/ 

urls=(
    "https://longdogechallenge.com/"
    "https://pointerpointer.com/"
    "https://kimjongillookingatthings.tumblr.com/"
    "https://binarypiano.com/"
    "https://leekspin.com/"
    "https://leekspin.com/"
    "https://www.cameronsworld.net"
    "https://www.google.com"
    "https://github.com/HelloZOOO"
)

while true; do
    echo "Change README.md..."
    shuffled_urls=($(shuf -e "${urls[@]}"))

    # copy origin README 
    cat ./README_origin.md > ./README.md

    # Generate random value and add to URL
    echo "<table>" > ./table.html
    for i in {1..3}; do
        echo "<tr>" >> ./table.html
        for j in {1..3}; do
            rand_num=$(( $RANDOM % 2001 + 415500 ))
            echo "<td><a href='${shuffled_urls[$((i+j))]}'><img src='https://www.random-art.org/img/large/$rand_num.jpg'></a></td>" >> ./table.html
        done
        echo "</tr>" >> ./table.html
    done
    echo "</table>" >> ./table.html

    # Paste file info on README.md
    echo " $(echo -e "<br/>") $(cat ./table.html)" >> ./README.md

    sleep 1800 # 30 minutes
    echo "Sleeping for 30 minutes..."
done







































