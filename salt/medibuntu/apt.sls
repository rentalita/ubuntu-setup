/etc/apt/sources.list.d/medibuntu.list:
  file:
    - managed
    - source: salt://medibuntu/medibuntu.list
    - user: root
    - group: root
    - mode: 644

medibuntu-apt:
  cmd:
    - wait
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0C5A2783
    - watch:
      - file: /etc/apt/sources.list.d/medibuntu.list
