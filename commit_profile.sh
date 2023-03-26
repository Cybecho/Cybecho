#!/bin/bash
cd /home/thquddnr123/AutoCommit/HelloZOOO
git add .
git commit -m "Automated commit $(date)"
git push origin main

echo "README UPDATE at $(date)"
