include:
  - wordpress
  - php.nginx

extend:
  wordpress:
    pkg:
      - require:
        - pkg: php
        - service: nginx
