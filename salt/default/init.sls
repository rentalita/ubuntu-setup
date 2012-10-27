include:
  - apt

default:
  pkg:
    - latest
    - names:
      - aptitude
      - htop
      - realpath
      - sudo
      - tmux
    - require:
      - cmd: apt-upgrade

whoopsie:
  pkg:
    - purged

/etc/default/apport
  file:
    - managed
    - source: salt://default/apport
    - user: root
    - group: root
    - mode: 644
