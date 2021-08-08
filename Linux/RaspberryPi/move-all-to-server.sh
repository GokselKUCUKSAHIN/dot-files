#!/bin/bash
# Move files VS_Code Works Space to Apache Server Directory. 

echo "Starting- Jellybeanci"

#MOVE OLDS TO BACKUP FOLDER
dt=$(date +"%T")
sudo mkdir /var/BACKUPS/$dt
sudo cp -vR /var/www/* /var/BACKUPS/$dt/
sudo rm -rf /var/www/*
sudo mkdir -v /var/www/html
sudo mkdir -v /var/www/server

#MOVE NEW STUFF TO /VAR/WWW/
sudo cp -vR /home/pi/VS_Code_Space/html/* /var/www/html/
sudo cp -vR /home/pi/VS_Code_Space/server/* /var/www/server/

echo "Finished- Jellybeanci"
