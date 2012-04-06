/etc/apt/sources.list.d/dropbox.list:
  file:
    - managed
    - source: salt://dropbox/dropbox.list
    - user: root
    - group: root
    - mode: 644

5044912E:
  cmd:
    - wait
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 5044912E
    - watch:
      - file: /etc/apt/sources.list.d/dropbox.list

dropbox:
  pkg:
    - latest
    - names:
      - nautilus-dropbox
