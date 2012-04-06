include:
  - sqlite3

sqlite3-dev:
  pkg:
    - latest
    - names:
      - sqlite3-doc
    - require:
      - pkg: sqlite3
