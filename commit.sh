#!/bin/bash          
set -x

#exec ssh-agent bash
ssh-add
git pull
python weatherScrapper.py
git add -A
git commit -m "Daily Weather Update"
git push 
echo "All done!"
