include:
  - www

fcgiwrap:
  pkg:
    - latest

nginx:
  pkg:
    - latest
    - names:
      - nginx-light
    - require:
      - pkg: www-packages
      - pkg: fcgiwrap
  service:
    - running
    - enable: True
    - name: nginx

/etc/nginx/nginx.conf:
  file:
    - managed
    - source: salt://nginx/nginx.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: nginx

/etc/nginx/sites-enabled/custom.conf:
  file:
    - managed
    - source: salt://nginx/custom.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: nginx

/etc/nginx/sites-enabled:
  file:
    - directory
    - clean: True
    - require:
      - file: /etc/nginx/sites-enabled/custom.conf
