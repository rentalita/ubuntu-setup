include:
  - chromium.apt
  - dropbox.apt
  - medibuntu.apt
  - saltstack.apt
  - rentalita.apt

/etc/apt/apt.conf.d/99local:
  file:
    - managed
    - source: salt://apt/apt.conf
    - user: root
    - group: root
    - mode: 644

/etc/apt/sources.list:
  file:
    - managed
    - source: salt://apt/sources.list
    - user: root
    - group: root
    - mode: 644

/etc/apt/sources.list.d:
  file:
    - directory
    - clean: True
    - require:
      - file: /etc/apt/sources.list.d/chromium.list
      - file: /etc/apt/sources.list.d/google-talkplugin.list
      - file: /etc/apt/sources.list.d/dropbox.list
      - file: /etc/apt/sources.list.d/medibuntu.list
      - file: /etc/apt/sources.list.d/saltstack.list
      - file: /etc/apt/sources.list.d/rentalita.list

apt-update:
  cmd:
    - run
    - name: apt-get update
    - require:
      - file: /etc/apt/apt.conf.d/99local
      - file: /etc/apt/sources.list
      - file: /etc/apt/sources.list.d
      - cmd: chromium-apt
      - cmd: google-talkplugin-apt
      - cmd: dropbox-apt
      - cmd: medibuntu-apt
      - cmd: saltstack-apt
      - cmd: rentalita-apt

apt-upgrade:
  cmd:
    - run
    - name: apt-get --assume-yes dist-upgrade
    - require:
      - cmd: apt-update
