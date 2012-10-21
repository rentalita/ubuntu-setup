dropbox-apt:
  cmd:
    - run
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 5044912E
    - unless: apt-key list | grep -q 5044912E

/etc/apt/sources.list.d/dropbox.list:
  file:
    - managed
    - source: salt://dropbox/dropbox.list
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - codename: {{ pillar['codename'] }}
    - require:
      - cmd: dropbox-apt
