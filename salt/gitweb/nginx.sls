include:
  - gitweb
  - nginx

extend:
  /etc/gitweb.conf:
    file:
      - watch_in:
        - service: nginx

/etc/nginx/conf.d/gitweb.conf:
  file:
    - managed
    - source: salt://gitweb/gitweb.nginx.conf
    - user: root
    - group: root
    - mode: 644
    - watch_in:
      - service: nginx
    - require:
      - pkg: gitweb
