#!/bin/bash
source /home/ubuntu/.bashrc
cd /home/ubuntu/Cybecho/

urls=(
    "https://longdogechallenge.com/"
    "https://pointerpointer.com/"
    "https://kimjongillookingatthings.tumblr.com/"
    "https://binarypiano.com/"
    "https://name.ho9.me/"
    "https://img.theqoo.net/img/rjIus.jpg"
    "https://www.cameronsworld.net"
    "https://www.omfgdogs.com/#"
    "http://www.omglasergunspewpewpew.com/"
)

realtimeUrls=($(cat ./imgList.txt))

while true; do
    sh_realtimeUrls=($(shuf -e "${realtimeUrls[@]}"))
    sh_urls=($(shuf -e "${urls[@]}"))
    indx=0

    # copy origin README 
    cat ./README_origin.md > ./README.md

    # Generate random value and add to URL
    echo "<table>" > ./table.html
    for i in {1..3}; do
        echo "<tr>" >> ./table.html
        for j in {1..3}; do
            echo "<td><a href='${sh_urls[$((indx))]}' target='_blank'><img src='${sh_realtimeUrls[$((indx))]}'></a></td>" >> ./table.html
            indx=$((indx+1))
        done
        echo "</tr>" >> ./table.html
    done
    echo "</table>" >> ./table.html

    # Paste file info on README.md
    echo "  $(echo -e '<br/>') $(cat ./table.html)" >> ./README.md

    sleep 1800 # 30 minutes
done
























 
  
   
       
      
     
    



















































