include:
  - apt

default:
  pkg:
    - latest
    - names:
      - aptitude
      - htop
      - logrotate
      - realpath
      - sudo
      - tmux
    - require:
      - cmd: apt-upgrade
