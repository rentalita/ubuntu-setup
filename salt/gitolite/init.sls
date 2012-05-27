include:
  - www.groups

/srv/git:
  file:
    - directory
    - user: root
    - group: www-data
    - mode: 2755
    - require:
      - group: www-data

gitolite:
  pkg:
    - latest
    - require:
      - file: /srv/git
