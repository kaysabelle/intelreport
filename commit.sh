#!/bin/bash          

sudo git pull
sudo python weatherScrapper.py
sudo git add -A
sudo git commit -m "Daily Weather Update"
sudo git push 
