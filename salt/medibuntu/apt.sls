5044912E:
  cmd:
    - run
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 5044912E

/etc/apt/sources.list.d/medibuntu.list:
  file:
    - managed
    - source: salt://medibuntu/medibuntu.list
    - user: root
    - group: root
    - mode: 644
    - requires:
      - cmd: 5044912E
