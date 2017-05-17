#!/usr/bin/env bash

# Install pip (needed to install and upgrade youtube video downloader)
[[ -z $(which pip) ]] && sudo apt-get --yes --force-yes install python-pip
[[ -z $(which pip3) ]] && sudo apt-get --yes --force-yes install python3-pip

# Install Youtube video downloader (Youtube-dl)
[[ -z $(which youtube-dl) ]] && sudo add-apt-repository ppa:rvm/smplayer -y ; sudo apt-get update ; sudo apt-get --yes --force-yes install youtube-dl

# Upgrade Youtube video downloader (youtube can change its way of working... this upgrade may be needed sometimes even after the install)
sudo pip install --upgrade youtube-dl
sudo pip3 install --upgrade youtube-dl

# Install music player
[[ -z $(which mplayer) ]] && sudo apt-get --yes --force-yes install mplayer
