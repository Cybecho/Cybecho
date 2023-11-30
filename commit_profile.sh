#!/bin/bash
cd /home/ubuntu/Cybecho
git add .
git commit -m "Automated commit $(date)"
git push origin main
