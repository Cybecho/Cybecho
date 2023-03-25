#!/bin/bash
source /home/thquddnr123/.bashrc
cd /home/thquddnr123/AutoCommit/HelloZOOO/

# 원본 README 복사
cat /home/thquddnr123/AutoCommit/HelloZOOO/README_origin.md > /home/thquddnr123/AutoCommit/HelloZOOO/README.md

# 랜덤한 난수를 생성하여 URL부분에 입력해주는 과정
echo "<table>" > /home/thquddnr123/AutoCommit/HelloZOOO/table.html
for i in {1..3}; do
    echo "<tr>" >> /home/thquddnr123/AutoCommit/HelloZOOO/table.html
    for j in {1..3}; do
        rand_num=$(( $RANDOM % 2001 + 415500 ))
        echo "<td><img src='https://www.random-art.org/img/large/$rand_num.jpg'></td>" >> table.html
    done
    echo "</tr>" >> /home/thquddnr123/AutoCommit/HelloZOOO/table.html
done
echo "</table>" >> /home/thquddnr123/AutoCommit/HelloZOOO/table.html

# README.md 파일에 테이블 정보 붙여넣기
echo " $(echo -e "<br/>") $(cat table.html)" >> /home/thquddnr123/AutoCommit/HelloZOOO/README.md

