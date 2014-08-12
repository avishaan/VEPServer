#!/bin/bash

# Steam login information, replace with your info
STEAMUSERNAME=$1
STEAMPASSWORD=$2

cd /home
mkdir starbound
cd starbound
apt-get update
# install necessary starbound dependency
apt-get -y install lib32gcc1
# install screen dependency
apt-get -y install screen
# get the steam for linux install file
wget http://media.steampowered.com/client/steamcmd_linux.tar.gz
# unzip the linux install file
tar -xvzf steamcmd_linux.tar.gz
# make a 'update starbound' file
touch update_starbound.sh
# write the following to the update starbound file
echo "./steamcmd.sh +login $STEAMUSERNAME $STEAMPASSWORD +force_install_dir ./server +app_update 211820 +quit" > update_starbound.sh
# run the starbound file
sh update_starbound.sh
# we sleep for 45 seconds, depending on steam load we need to wait to start server after install is compelte
sleep 45
cd /home/starbound/server
cd /home/starbound/server/linux64
# start starbound in a detached screen session
screen -S starbound -d -m ./starbound_server
