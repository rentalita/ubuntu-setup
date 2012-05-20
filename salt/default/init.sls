include:
  - apt

default:
  pkg:
    - latest
    - names:
      - logrotate
      - sudo
      - realpath
      - tmux
    - require:
      - cmd: apt-upgrade
