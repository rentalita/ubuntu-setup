#!/bin/sh -e

if [ "$(which ruby)" = "" ]; then
    echo "Unable to locate ruby. Please run: sudo apt-get install ruby-full"
    exit 1
fi

SETUP_HOME="$(dirname $0)"
export SETUP_HOME

PUPPET_HOME="${SETUP_HOME}"/puppet
export PUPPET_HOME

PUPPET_MANIFESTS="${PUPPET_HOME}"/manifests
export PUPPET_MANIFESTS

PUPPET_MODULES="${PUPPET_HOME}"/modules
export PUPPET_MODULES

cd "${SETUP_HOME}"

PACKAGES="$(cat packages.d/default)"

if [ ! "$1" = "" ]; then
    case "$1" in
        --extras)
            PACKAGES="$(cat packages.d/*)"
            ;;
        *)
            echo "Usage: $(basename $0) [--extras]"
            exit 1
            ;;
    esac
fi

find /etc/apt -name "*list" | xargs sudo rm -f

tar -C ubuntu-setup -cf - $(cd ubuntu-setup; find .) | \
    $(sudo tar -C / -xf -)

sudo ./update-sources.rb

sudo chown -R root:root /etc/apt

KEYS="              \
    7FAC5991        \
    5044912E        \
    0C5A2783        \
    4E5E17B5        \
"

for KEY in ${KEYS}; do
    sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com ${KEY}
done

sudo apt-get update
sudo apt-get dist-upgrade

sudo apt-get install ${PACKAGES}

sudo puppet apply --verbose --modulepath="${PUPPET_MODULES}" "${PUPPET_MANIFESTS}"/site.pp

sudo apt-get clean
sudo apt-get autoremove --purge

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
