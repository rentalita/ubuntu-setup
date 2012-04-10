include:
  - apt

default:
  pkg:
    - latest
    - names:
      - fabric
      - tmux
    - require:
      - cmd: apt-upgrade
