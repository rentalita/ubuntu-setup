include:
  - www

nginx-pkgs:
  pkg:
    - latest
    - names:
      - nginx-light
    - require:
      - pkg: www-packages

nginx-extras-pkgs:
  pkg:
    - latest
    - names:
      - fcgiwrap
    - require:
      - pkg: nginx-pkgs

/etc/nginx/nginx.conf:
  file:
    - managed
    - source: salt://nginx/nginx.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: nginx-pkgs

/etc/nginx/sites-enabled/local:
  file:
    - managed
    - source: salt://nginx/local.site
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - servername: {{ pillar['servername'] }}
    - require:
      - pkg: nginx-pkgs

/etc/nginx/sites-enabled:
  file:
    - directory
    - clean: True
    - require:
      - file: /etc/nginx/sites-enabled/local

nginx:
  service:
    - running
    - enable: True
    - watch:
      - file: /etc/nginx/nginx.conf
      - file: /etc/nginx/sites-enabled/local
