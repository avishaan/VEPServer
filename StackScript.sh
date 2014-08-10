#!/bin/bash

# Steam login information, replace with your info
STEAMUSERNAME=$1
STEAMPASSWORD=$2

cd /home
mkdir starbound
mkdir murmur
cd starbound
apt-get update
# install necessary starbound dependency
apt-get -y install lib32gcc1
wget http://media.steampowered.com/client/steamcmd_linux.tar.gz
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
cd /home/murmur
# install necessary library for mumble server
apt-get -y install libicu48
# install mumble server
apt-get -y install mumble-server
# start the mumble server aka murmur
murmurd
cd /home/starbound/server/linux64
# start starbound in a detached screen session
screen -S starbound -d -m ./starbound_server
# install htop so you can see cpu utilization and decide if you need a bigger server
apt-get -y install htop
