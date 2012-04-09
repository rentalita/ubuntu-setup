include:
  - apt

default:
  pkg:
    - latest
    - names:
      - tmux
    - require:
      - cmd: apt-upgrade
