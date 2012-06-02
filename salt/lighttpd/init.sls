include:
  - www

lighttpd-pkgs:
  pkg:
    - latest
    - names:
      - spawn-fcgi
      - nginx-light
    - require:
      - pkg: www-packages

lighttpd:
  service:
    - dead
    - enable: False
