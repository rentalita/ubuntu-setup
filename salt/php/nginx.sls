include:
  - php
  - nginx

extend:
  php:
    pkg:
      - require:
        - service: nginx
