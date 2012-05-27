gitweb:
  pkg:
    - latest

/etc/gitweb.conf:
  file:
    - managed
    - source: salt://gitweb/gitweb.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: gitweb
