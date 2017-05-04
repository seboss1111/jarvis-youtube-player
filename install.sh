#!/usr/bin/env bash

# Install Youtube video downloader (Youtube-dl)
[[ -z $(which youtube-dl) ]] && sudo add-apt-repository ppa:rvm/smplayer -y && sudo apt-get update && sudo apt-get --yes --force-yes install youtube-dl

# Install music player
[[ -z $(which mplayer) ]] && sudo apt-get --yes --force-yes install mplayer
