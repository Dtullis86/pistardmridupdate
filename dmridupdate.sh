#/!/bin/bash

#This scirpt will update DMRIDs from RadioID.net and will update talkgroups from Brandmeister.

# update DMR groups list infromation
rpi-rw;
wget "https://api.brandmeister.network/v1.0/groups/" -O /tmp/groups.txt;
sudo cp /tmp/groups.txt /usr/local/etc/

# update DMR all users list infromation
wget "https://database.radioid.net/static/user.csv" -O /tmp/stripped.csv;
rpi-rw;
sudo cp /tmp/stripped.csv /usr/local/etc/;

#reboot system after update
sudo reboot
