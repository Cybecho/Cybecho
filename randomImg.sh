#!/bin/bash
source /home/thquddnr123/.bashrc
cd /home/thquddnr123/AutoCommit/decreaseGuilty/

# Generate a random number between 415500 and 417500
rand_num=$(( $RANDOM % 2001 + 415500 ))

# Add the image URL to README.md
echo "$(date) - $(openssl rand -hex 5) $(echo -e "<br/>") ![](https://www.random-art.org/img/large/$rand_num.jpg)" >> ./README.md
