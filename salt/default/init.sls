include:
  - apt
  - saltstack

default:
  pkg:
    - latest
    - names:
      - tmux
      - saltstack
    - require:
      - cmd: apt-upgrade
