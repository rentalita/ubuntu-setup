openssh-server:
  pkg:
    - latest

/etc/ssh/sshd_config:
  file:
    - sed
    - before: '#PasswordAuthentication yes'
    - after: 'PasswordAuthentication no'
    - require:
      - pkg: openssh-server

ssh:
  service:
    - running
    - enable: True
    - watch:
      - file: /etc/ssh/sshd_config
