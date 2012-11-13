/etc/apt/preferences.d/99chromium:
  file:
    - managed
    - source: salt://chromium/apt.preferences
    - user: root
    - group: root
    - mode: 644

google-talkplugin-apt:
  cmd:
    - run
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 7FAC5991
    - unless: apt-key list | grep -q 7FAC5991

/etc/apt/sources.list.d/google-talkplugin.list:
  file:
    - managed
    - source: salt://chromium/google-talkplugin.list
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - codename: {{ pillar['codename'] }}
    - require:
      - cmd: google-talkplugin-apt
