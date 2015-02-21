#!/bin/bash          

ssh-add
git pull
echo "Pulling latest weather data..."
python weatherScrapper.py
git add -A
git commit -m "Daily Weather Update"
git push 
echo "All done!"
