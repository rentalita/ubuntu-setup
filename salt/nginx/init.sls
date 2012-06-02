include:
  - www

fcgiwrap:
  pkg:
    - latest

nginx-light:
  pkg:
    - latest
    - require:
      - pkg: www-packages
      - pkg: fcgiwrap

/etc/nginx/nginx.conf:
  file:
    - managed
    - source: salt://nginx/nginx.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: nginx-light

/etc/nginx/sites-enabled/custom:
  file:
    - managed
    - source: salt://nginx/custom
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - servername: {{ pillar['servername'] }}
    - require:
      - pkg: nginx-light

/etc/nginx/sites-enabled:
  file:
    - directory
    - clean: True
    - require:
      - pkg: nginx-light
      - file: /etc/nginx/sites-enabled/custom

nginx:
  service:
    - running
    - enable: True
    - watch:
      - file: /etc/nginx/nginx.conf
      - file: /etc/nginx/sites-enabled/custom
