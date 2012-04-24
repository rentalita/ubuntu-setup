include:
  - apt

default:
  pkg:
    - latest
    - names:
      - realpath
      - tmux
    - require:
      - cmd: apt-upgrade
