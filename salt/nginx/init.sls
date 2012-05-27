include:
  - www

fcgiwrap:
  pkg:
    - latest

nginx:
  pkg:
    - latest
    - names:
      - nginx-naxsi
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
