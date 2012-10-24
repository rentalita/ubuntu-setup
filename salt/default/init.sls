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
