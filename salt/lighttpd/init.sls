www-packages:
  pkg:
    - latest
    - names:
      - ssl-cert
      - libio-socket-ssl-perl
      - libwww-perl
      - libjs-jquery
      - libjs-jquery-tablesorter

spawn-fcgi:
  pkg:
    - latest

lighttpd:
  pkg:
    - latest
    - require:
      - pkg: www-packages
      - pkg: spawn-fcgi
  service:
    - dead
    - enabled: False
