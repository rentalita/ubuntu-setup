#!/bin/sh -e

# apt-get update
# apt-get install --no-install-recommends etckeeper
# apt-get dist-upgrade --no-install-recommends
# apt-get clean

# adduser tvaughan
# adduser tvaughan sudo
# passwd -dl root

# vi /etc/ssh/sshd_config
# service ssh restart

# vi /etc/hostname
# vi /etc/hosts
# vi /etc/default/dhcpcd
# service hostname restart

# dpkg-reconfigure tzdata
# apt-get install --no-install-recommends git

# add ppa:saltstack/salt
# install salt-master and salt-minion
# on master:
#   sudo ln -s $(pwd)/salt /src/salt
# on minion:
#   set "master" to "appropriate hostname" in /etc/salt/minion

sudo salt -t 600 '*' state.highstate

sudo salt '*' cmd.run 'apt-get clean'
sudo salt '*' cmd.run 'apt-get autoremove --purge'

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
