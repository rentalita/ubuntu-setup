exim4-daemon-light:
  pkg:
    - latest

/etc/exim4/update-exim4.conf.conf:
  file:
    - managed
    - source: salt://exim4/update-exim4.conf.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: exim4-daemon-light

update-exim4.conf:
  cmd:
    - wait
    - watch:
      - file: /etc/exim4/update-exim4.conf.conf

root:
  alias:
    - present
    - target: tvaughan

/etc/mailname:
  file:
    - managed
    - source: salt://exim4/mailname
    - user: root
    - group: root
    - mode: 644

exim4:
  pkg:
    - latest
  service:
    - running
    - enable: True
    - require:
      - file: /etc/mailname
    - watch:
      - cmd: update-exim4.conf
      - alias: root
