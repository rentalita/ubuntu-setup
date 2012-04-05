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

4E5E17B5:
  cmd:
    - wait
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 4E5E17B5
    - watch:
      - file: /etc/apt/sources.list.d/chromium.list

/etc/apt/sources.list.d/dropbox.list:
  file:
    - managed
    - source: salt://assets/etc/apt/sources.list.d/dropbox.list
    - user: root
    - group: root
    - mode: 644

5044912E:
  cmd:
    - wait
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 5044912E
    - watch:
      - file: /etc/apt/sources.list.d/dropbox.list

/etc/apt/sources.list.d/google-talkplugin.list:
  file:
    - managed
    - source: salt://assets/etc/apt/sources.list.d/google-talkplugin.list
    - user: root
    - group: root
    - mode: 644

7FAC5991:
  cmd:
    - wait
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 7FAC5991
    - watch:
      - file: /etc/apt/sources.list.d/google-talkplugin.list

/etc/apt/sources.list.d/medibuntu.list:
  file:
    - managed
    - source: salt://assets/etc/apt/sources.list.d/medibuntu.list
    - user: root
    - group: root
    - mode: 644

0C5A2783:
  cmd:
    - wait
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0C5A2783
    - watch:
      - file: /etc/apt/sources.list.d/medibuntu.list

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
