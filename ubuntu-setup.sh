#!/bin/sh -e

sudo apt-get update
sudo apt-get dist-upgrade

# add ppa:saltstack/salt
# install salt-master and salt-minion
# on master:
#   sudo ln -s $(pwd)/salt /src/salt
# on minion:
#   set "master" to "appropriate hostname" in /etc/salt/minion

sudo rm -f /etc/apt/sources.list.d/*
sudo salt '*' state.highstate

sudo apt-get update
sudo apt-get dist-upgrade

sudo apt-get clean
sudo apt-get autoremove --purge

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
