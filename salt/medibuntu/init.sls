/etc/apt/sources.list.d/medibuntu.list:
  file:
    - managed
    - source: salt://medibuntu/medibuntu.list
    - user: root
    - group: root
    - mode: 644

5044912E:
  cmd:
    - wait
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 5044912E
    - watch:
      - file: /etc/apt/sources.list.d/medibuntu.list

medibuntu:
  pkg:
    - latest
    - names:
      - non-free-codecs
      - libdvdcss2
