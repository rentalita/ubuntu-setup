/etc/apt/apt.conf.d/99local:
  file:
    - managed
    - source: salt://default/apt.conf
    - user: root
    - group: root
    - mode: 644

/etc/apt/sources.list:
  file:
    - managed
    - source: salt://default/sources.list
    - user: root
    - group: root
    - mode: 644

/etc/apt/sources.list.d:
  file:
    - directory
    - clean: True
    - require:
      - file: /etc/apt/sources.list.d/medibuntu.list
      - file: /etc/apt/sources.list.d/chromium.list
      - file: /etc/apt/sources.list.d/google-talkplugin.list
      - file: /etc/apt/sources.list.d/dropbox.list

apt-update:
  cmd:
    - run
    - name: apt-get update
    - require:
      - file: /etc/apt/apt.conf.d/99local
      - file: /etc/apt/sources.list
      - file: /etc/apt/sources.list.d

apt-upgrade:
  cmd:
    - run
    - name: apt-get dist-upgrade
    - require:
      - cmd: apt-update

default:
  pkg:
    - latest
    - names:
      - tmux
    - require:
      - cmd: apt-upgrade
