nodejs-apt:
  cmd:
    - run
    - name: apt-key adv --recv-keys --keyserver keyserver.ubuntu.com C7917B12
    - unless: apt-key list | grep -q C7917B12

/etc/apt/sources.list.d/nodejs.list:
  file:
    - managed
    - source: salt://nodejs/nodejs.list
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - codename: {{ pillar['codename'] }}
    - require:
      - cmd: nodejs-apt
