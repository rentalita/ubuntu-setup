/etc/apt/sources.list.d/rentalita.list:
  file:
    - managed
    - source: salt://rentalita/rentalita.list
    - user: root
    - group: root
    - mode: 644

rentalita-apt:
  cmd:
    - wait
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 92238311
    - watch:
      - file: /etc/apt/sources.list.d/rentalita.list
