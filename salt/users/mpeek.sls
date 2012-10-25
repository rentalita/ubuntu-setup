include:
  - sudo.groups
  - www.groups

mpeek-group:
  group:
    - present
    - name: mpeek
    - gid: 1001

mpeek:
  user:
    - present
    - fullname: Matt Peek
    - shell: /bin/bash
    - home: /home/mpeek
    - uid: 1001
    - gid: 1001
    - require:
      - group: mpeek-group
  ssh_auth:
    - present
    - user: mpeek
    - source: salt://users/mpeek.id_rsa.pub

mpeek-groups:
  cmd:
    - run
    - names:
      - adduser mpeek sudo
      - adduser mpeek www-site
    - require:
      - user: mpeek
      - group: sudo
      - group: www-site
