tvaughan:
  group:
    - present
    - gid: 1000

tvaughan:
  user:
    - present
    - fullname: Tom Vaughan
    - shell: /bin/bash
    - home: /home/tvaughan
    - uid: 1000
    - gid: 1000
  ssh_auth:
    - present
    - user: tvaughan
    - source: salt://users/tvaughan.id_rsa.pub
