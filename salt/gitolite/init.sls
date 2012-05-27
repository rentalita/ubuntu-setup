include:
  - www.groups

git:
  user:
    - present
    - shell: /bin/bash
    - home: /var/lib/gitolite
    - system: True

/srv/git:
  file:
    - directory
    - user: git
    - group: www-data
    - mode: 2750
    - require:
      - user: git
      - group: www-data

gitolite:
  pkg:
    - latest
    - require:
      - file: /srv/git
