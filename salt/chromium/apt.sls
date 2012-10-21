chromium-apt:
  cmd:
    - run
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 4E5E17B5
    - unless: apt-key list | grep -q 4E5E17B5

/etc/apt/sources.list.d/chromium.list:
  file:
    - managed
    - source: salt://chromium/chromium.list
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - codename: {{ pillar['codename'] }}
    - require:
      - cmd: chromium-apt

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
