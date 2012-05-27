include:
  - saltstack.apt

saltstack:
  pkg:
    - latest
    - names:
      - salt-minion
      - salt-master
    - require:
      - cmd: apt-update
