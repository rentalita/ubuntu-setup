include:
  - chromium.apt

chromium:
  pkg:
    - latest
    - names:
      - chromium-browser
      - chromium-codecs-ffmpeg-extra
      - google-talkplugin
    - require:
      - cmd: apt-update
