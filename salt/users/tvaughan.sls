include:
  - sudo.groups
  - www.groups

tvaughan-group:
  group:
    - present
    - name: tvaughan
    - gid: 1000

tvaughan:
  user:
    - present
    - fullname: Tom Vaughan
    - shell: /bin/bash
    - home: /home/tvaughan
    - uid: 1000
    - gid: 1000
    - require:
      - group: tvaughan-group
  ssh_auth:
    - present
    - user: tvaughan
    - source: salt://users/tvaughan.id_rsa.pub

tvaughan-groups:
  cmd:
    - run
    - names:
      - adduser tvaughan sudo
      - adduser tvaughan www-site
    - require:
      - user: tvaughan
      - group: sudo
      - group: www-site

root:
  alias:
    - present
    - target: tvaughan
    - require:
      - user: tvaughan
