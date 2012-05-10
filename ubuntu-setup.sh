#!/bin/sh -e

# apt-get update
# apt-get install --no-install-recommends etckeeper
# apt-get dist-upgrade --no-install-recommends
# apt-get clean

# vi /etc/hostname
# vi /etc/hosts
# vi /etc/default/dhcpcd
# service hostname restart

# dpkg-reconfigure tzdata
# apt-get install --no-install-recommends git

# adduser tvaughan
# adduser tvaughan sudo
# passwd -dl root

# add saltstack ppa
# apt-get install salt-master and salt-minion
# on minion:
#   set "master" to "appropriate hostname" in /etc/salt/minion
# on master:
#   salt-key -A
#   git clone git://github.com/rentalita/ubuntu-setup.git
#   ln -s ubuntu-setup/salt /srv/salt

sudo salt -t 6000 '*' state.highstate

sudo salt '*' cmd.run 'apt-get clean'
sudo salt '*' cmd.run 'apt-get autoremove --purge'

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
