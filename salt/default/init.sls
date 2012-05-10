include:
  - apt

default:
  pkg:
    - latest
    - names:
      - sudo
      - realpath
      - tmux
    - require:
      - cmd: apt-upgrade
