include:
  - gitweb
  - nginx

extend:
  gitweb:
    pkg:
      - require:
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
