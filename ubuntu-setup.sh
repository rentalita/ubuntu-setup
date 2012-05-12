#!/bin/sh -e

# apt-get update
# apt-get install --no-install-recommends etckeeper
# apt-get dist-upgrade --no-install-recommends
# apt-get install --no-install-recommends git
# apt-get clean

# vi /etc/hostname
# vi /etc/hosts
# vi /etc/default/dhcpcd (maybe)
# service hostname restart

# dpkg-reconfigure tzdata

# adduser tvaughan
# adduser tvaughan sudo
# passwd -dl root

# echo "deb http://ppa.launchpad.net/saltstack/salt/ubuntu precise main" > /etc/apt/sources.list.d/saltstack.list
# apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0E27C0A6
# apt-get update

# on minion:
#   apt-get install salt-minion
#   apt-get clean
#   set "master" to "appropriate hostname" in /etc/salt/minion
#   service salt-minion restart
# on master:
#   apt-get install salt-master
#   apt-get clean
#   salt-key -A (danger!!!)
#   git clone git://github.com/rentalita/ubuntu-setup.git
#   ln -s $(pwd)/ubuntu-setup/salt /srv/salt

sudo salt --no-color -t 6000 '*' state.highstate

sudo salt --no-color '*' cmd.run 'apt-get clean'
sudo salt --no-color '*' cmd.run 'apt-get autoremove --purge'

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
