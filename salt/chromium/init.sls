/etc/apt/sources.list.d/chromium.list:
  file:
    - managed
    - source: salt://chromium/chromium.list
    - user: root
    - group: root
    - mode: 644

4E5E17B5:
  cmd:
    - wait
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 4E5E17B5
    - watch:
      - file: /etc/apt/sources.list.d/chromium.list

/etc/apt/sources.list.d/google-talkplugin.list:
  file:
    - managed
    - source: salt://chromium/google-talkplugin.list
    - user: root
    - group: root
    - mode: 644

7FAC5991:
  cmd:
    - wait
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 7FAC5991
    - watch:
      - file: /etc/apt/sources.list.d/google-talkplugin.list

chromium:
  pkg:
    - latest
    - names:
      - chromium-browser
      - chromium-codecs-ffmpeg-extra
      - google-talkplugin
