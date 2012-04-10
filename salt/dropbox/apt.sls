/etc/apt/sources.list.d/dropbox.list:
  file:
    - managed
    - source: salt://dropbox/dropbox.list
    - user: root
    - group: root
    - mode: 644

dropbox-apt:
  cmd:
    - wait
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 5044912E
    - watch:
      - file: /etc/apt/sources.list.d/dropbox.list
