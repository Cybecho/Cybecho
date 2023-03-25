#!/bin/bash
source /home/thquddnr123/.bashrc
cd /home/thquddnr123/AutoCommit/HelloZOOO/

# Initialize the README.md file with the original text
echo "### Hi there 👋

My profile picture is my selfie Steal X

#### 📫 How to reach me?
<a href=\"mailto:thquddnr123@gmail.com\">
    <img
        src=\"https://img.shields.io/badge/Gmail-d14836?style=flat-square&logo=Gmail&logoColor=white&link=mailto:thquddnr123@gmail.com\"
        style=\"height: auto; margin-left: 60px; margin-right: 60px;\"/>
</a>

#### 😄 It's Me!!!

<a href=\"https://cybecho.notion.site/SBU-s-Archives-854ccd3338c2456a867956f26143998a\" target=\"_blank\"><img src=\"https://img.shields.io/badge/Portfolio-3030\" >
<a href=\"https://www.instagram.com/junk_warrior_vintage/\" target=\"_blank\"><img src=\"https://img.shields.io/badge/@junk_warrir_vintage-E4405F?style=for- the-b\" >
<a href=\"https://www.behance.net/thquddnr125654\" target=\"_blank\"><img src=\"https://img.shields.io/badge/Behance-1769FF?style=for-the- badge&logo=Behance&logo>

![](https://www.random-art.org/img/large/417819.jpg)

<!--
Markup Quick View Site
https://dillinger.io/
-->" > README.md

# Generate a random number between 415500 and 417500
rand_num=$(( $RANDOM % 2001 + 415500 ))

# Add the new data to README.md file
echo " $(echo -e "<br/>") ![](https://www.random-art.org/img/large/$rand_num.jpg)" >> README.md
