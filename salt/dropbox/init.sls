5044912E:
  cmd:
    - run
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 5044912E

/etc/apt/sources.list.d/dropbox.list:
  file:
    - managed
    - source: salt://dropbox/dropbox.list
    - user: root
    - group: root
    - mode: 644
    - requires:
      - file: 5044912E

dropbox:
  pkg:
    - latest
    - names:
      - nautilus-dropbox
    - requires:
      - file: /etc/apt/sources.list.d/dropbox.list
