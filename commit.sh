#!/bin/bash          

#echo Adding private key...
exec ssh-agent bash
ssh-add ~/.ssh/id_rsa
echo Pulling latest weather data...
sudo git pull
sudo python weatherScrapper.py
sudo git add -A
sudo git commit -m "Daily Weather Update"
sudo git push 
echo All done!
