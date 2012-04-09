4E5E17B5:
  cmd:
    - run
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 4E5E17B5

/etc/apt/sources.list.d/chromium.list:
  file:
    - managed
    - source: salt://chromium/chromium.list
    - user: root
    - group: root
    - mode: 644
    - requires:
      - file: 4E5E17B5

7FAC5991:
  cmd:
    - run
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 7FAC5991

/etc/apt/sources.list.d/google-talkplugin.list:
  file:
    - managed
    - source: salt://chromium/google-talkplugin.list
    - user: root
    - group: root
    - mode: 644
    - requires:
      - file: 7FAC5991
