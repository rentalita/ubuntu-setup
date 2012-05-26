include:
  - www.groups

/var/www:
  file:
    - directory
    - require:
      - group: www-data

www-packages:
  pkg:
    - latest
    - names:
      - ssl-cert
      - libio-socket-ssl-perl
      - libwww-perl
      - libjs-jquery
      - libjs-jquery-tablesorter
