#!/bin/sh -e

[ ! -d /home/"${USER}"/.logout.d ] && exit 0

for prog in /home/"${USER}"/.logout.d/*; do
    [ ! -x "${prog}" ] && continue
    echo "${prog}" >> /var/log/logout."${USER}".log
    "${prog}"
done
