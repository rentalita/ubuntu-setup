heroku-apt:
  cmd:
    - run
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0F1B0520
    - unless: apt-key list | grep -q 0F1B0520

/etc/apt/sources.list.d/heroku.list:
  file:
    - managed
    - source: salt://heroku/heroku.list
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - codename: {{ pillar['codename'] }}
    - require:
      - cmd: heroku-apt
