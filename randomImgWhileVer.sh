#!/bin/bash 
source /home/thquddnr123/.bashrc 
cd /home/thquddnr123/AutoCommit/HelloZOOO/ 

url="https://github.com/HelloZOOO"

while true; do
    # copy origin README 
    cat ./README_origin.md > ./README.md

    # Generate random value and add to URL
    echo "<table>" > ./table.html
    for i in {1..3}; do
        echo "<tr>" >> ./table.html
        for j in {1..3}; do

		urlRandom=$(( $RANDOM % 5 + 1 ))

		if [ $urlRandom -eq 1 ]
		then
    			url="http://www.lomando.com/nyanyanyanyahn.html"
		elif [ $urlRandom -eq 2 ]
		then
    			url="http://www.lomando.com/smpeyekotoba.html"
		elif [ $urlRandom -eq 3 ]
		then
    			url="http://www.lomando.com/smpdoor.html"
		else
    			url="http://www.lomando.com/smpdoor.html"
		fi

	    rand_num=$(( $RANDOM % 2001 + 415500 ))
    	    echo "<td><a href='$url'><img src='https://www.random-art.org/img/large/$rand_num.jpg'></a></td>" >> ./table.html
        done
        echo "</tr>" >> ./table.html
    done
    echo "</table>" >> ./table.html

    # Paste file info on README.md
    echo " $(echo -e "<br/>") $(cat ./table.html)" >> ./README.md

    sleep 90 # 1시간 대기
done
