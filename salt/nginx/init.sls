include:
  - www

fcgiwrap:
  pkg:
    - latest

nginx:
  pkg:
    - latest
    - names:
      - nginx-naxsi
    - require:
      - pkg: www-packages
      - pkg: fcgiwrap
  service:
    - running
    - enable: True
