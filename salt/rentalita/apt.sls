rentalita-apt:
  cmd:
    - run
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 92238311
    - unless: apt-key list | grep -q 92238311

/etc/apt/sources.list.d/rentalita.list:
  file:
    - managed
    - source: salt://rentalita/rentalita.list
    - user: root
    - group: root
    - mode: 644
    - require:
      - cmd: rentalita-apt
