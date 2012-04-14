include:
  - apt

default:
  pkg:
    - latest
    - names:
      - fabric
      - realpath
      - tmux
    - require:
      - cmd: apt-upgrade
