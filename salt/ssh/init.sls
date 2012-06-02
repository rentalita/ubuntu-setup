ssh-pkgs:
  pkg:
    - latest
    - names:
      - openssh-server

/etc/ssh/sshd_config:
  file:
    - managed
    - source: salt://ssh/sshd.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: ssh-pkgs

ssh:
  service:
    - running
    - enable: True
    - watch:
      - file: /etc/ssh/sshd_config
