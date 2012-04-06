/etc/apt/apt.conf.d/99local:
  file:
    - managed
    - source: salt://assets/etc/apt/apt.conf.d/99local
    - user: root
    - group: root
    - mode: 644

/etc/apt/sources.list:
  file:
    - managed
    - source: salt://assets/etc/apt/sources.list
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

default:
  pkg:
    - latest
    - names:
      - tmux
    - require:
      - file: /etc/apt/apt.conf.d/99local
      - file: /etc/apt/sources.list
      - file: /etc/apt/sources.list.d
