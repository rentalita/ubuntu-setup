include:
  - nodejs.apt

nodejs:
  pkg:
    - latest
    - names:
      - nodejs
      - npm
    - require:
      - cmd: apt-update
