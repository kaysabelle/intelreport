#!/bin/bash          

#echo Adding private key...
exec ssh-agent bash
ssh-add ~/.ssh/id_rsa
echo "Pulling latest weather data..."
git pull
python weatherScrapper.py
git add -A
git commit -m "Daily Weather Update"
git push 
echo "All done!"
