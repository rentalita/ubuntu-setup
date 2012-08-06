#!/bin/sh -e

# https://gist.github.com/2816609

sudo salt --no-color -t 6000 '*' state.highstate

sudo salt --no-color '*' cmd.run 'apt-get clean'
sudo salt --no-color '*' cmd.run 'apt-get autoremove --purge --assume-yes'

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
