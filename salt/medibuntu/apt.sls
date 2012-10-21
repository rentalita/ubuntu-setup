medibuntu-apt:
  cmd:
    - run
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0C5A2783
    - unless: apt-key list | grep -q 0C5A2783

/etc/apt/sources.list.d/medibuntu.list:
  file:
    - managed
    - source: salt://medibuntu/medibuntu.list
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - codename: {{ pillar['codename'] }}
    - require:
      - cmd: medibuntu-apt
