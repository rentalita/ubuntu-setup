include:
  - www.groups

/srv/www:
  file:
    - directory
    - user: root
    - group: www-data
    - mode: 2775
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
    - require:
      - file: /srv/www
