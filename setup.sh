#!/bin/sh -e

cd $(dirname $0)

PACKAGES="$(cat packages.d/ubuntu)"

if [ ! "$1" = "" ]; then
    case "$1" in
        *extras)
            PACKAGES="$(cat packages.d/*)"
            ;;
        *)
            echo "Usage: $(basename $0) [--extras]"
            exit 1
            ;;
    esac
fi

tar -C ubuntu -cf - $(cd ubuntu; find .) | $(sudo tar -C / -xf -)

KEYS="              \
    7FAC5991        \
    5044912E        \
    CE49EC21        \
"

for KEY in ${KEYS}; do
    sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com ${KEY}
done

sudo apt-get update
sudo apt-get dist-upgrade

sudo apt-get install ${PACKAGES}

SERVICES="          \
    lighttpd        \
    nginx           \
"

for SERVICE in ${SERVICES}; do
    sudo service "${SERVICE}" stop
    sudo update-rc.d -f "${SERVICE}" remove
done

sudo apt-get clean
sudo apt-get autoremove --purge

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
