include:
  - www.groups

gitolite:
  pkg:
    - latest
    - debconf: salt://gitolite/gitolite.answers

/srv/git:
  file:
    - directory
    - user: git
    - group: www-data
    - mode: 2750
    - require:
      - group: www-data
      - pkg: gitolite

/var/lib/gitolite/.gitolite.rc:
  file:
    - managed
    - source: salt://gitolite/gitolite.rc
    - user: git
    - group: git
    - mode: 644
    - require:
      - pkg: gitolite
