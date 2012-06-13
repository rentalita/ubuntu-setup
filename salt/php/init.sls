php:
  pkg:
    - latest
    - names:
      - php5-fpm

/etc/php5/fpm/php.ini:
  file:
    - managed
    - source: salt://php/php.fpm.ini
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: php
