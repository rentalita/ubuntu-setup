0E27C0A6:
  cmd:
    - run
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0E27C0A6

/etc/apt/sources.list.d/saltstack.list:
  file:
    - managed
    - source: salt://saltstack/saltstack.list
    - user: root
    - group: root
    - mode: 644
    - requires:
      - file: 0E27C0A6
