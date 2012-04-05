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

/etc/apt/sources.list.d/canonical.list:
  file:
    - managed
    - source: salt://assets/etc/apt/sources.list.d/canonical.list
    - user: root
    - group: root
    - mode: 644

/etc/apt/sources.list.d/chromium.list:
  file:
    - managed
    - source: salt://assets/etc/apt/sources.list.d/chromium.list
    - user: root
    - group: root
    - mode: 644

/etc/apt/sources.list.d/dropbox.list:
  file:
    - managed
    - source: salt://assets/etc/apt/sources.list.d/dropbox.list
    - user: root
    - group: root
    - mode: 644

/etc/apt/sources.list.d/google-talkplugin.list:
  file:
    - managed
    - source: salt://assets/etc/apt/sources.list.d/google-talkplugin.list
    - user: root
    - group: root
    - mode: 644

/etc/apt/sources.list.d/medibuntu.list:
  file:
    - managed
    - source: salt://assets/etc/apt/sources.list.d/medibuntu.list
    - user: root
    - group: root
    - mode: 644

default:
  pkg:
    - latest
    - names:
      - tmux
    - require:
      - file: /etc/apt/apt.conf.d/99local
      - file: /etc/apt/sources.list
      - file: /etc/apt/sources.list.d/canonical.list
      - file: /etc/apt/sources.list.d/chromium.list
      - file: /etc/apt/sources.list.d/dropbox.list
      - file: /etc/apt/sources.list.d/google-talkplugin.list
      - file: /etc/apt/sources.list.d/medibuntu.list
