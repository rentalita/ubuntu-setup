include:
  - www

lighttpd-pkgs:
  pkg:
    - latest
    - names:
      - spawn-fcgi
      - lighttpd
    - require:
      - pkg: www-packages

lighttpd:
  service:
    - dead
    - enable: False
