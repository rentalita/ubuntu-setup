include:
  - gitweb
  - nginx

/etc/nginx/conf.d/gitweb.conf:
  file:
    - managed
    - source: salt://gitweb/gitweb.nginx.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: gitweb
      - service: nginx
