include:
  - apt

default:
  pkg:
    - latest
    - names:
      - aptitude
      - htop
      - logrotate
      - sudo
      - realpath
      - tmux
    - require:
      - cmd: apt-upgrade
