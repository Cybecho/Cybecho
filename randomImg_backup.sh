#!/bin/bash
source /home/thquddnr123/.bashrc
cd /home/thquddnr123/AutoCommit/HelloZOOO/

# 원본 README 복사
cat README_backup.md > README.md

# Generate a random number between 415500 and 417500
rand_num=$(( $RANDOM % 2001 + 415500 ))

# Add the new data to README.md file
echo " $(echo -e "<br/>") ![](https://www.random-art.org/img/large/$rand_num.jpg)" >> README.md
