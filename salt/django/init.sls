include:
  - python
  - lighttpd
  - exim4
  - sqlite3

python-flup:
  pkg:
    - latest

python-django:
  pkg:
    - latest
    - require:
      - pkg: python
      - pkg: lighttpd
      - pkg: exim4
      - pkg: sqlite3
      - pkg: python-flup

python-django-south:
  pkg:
    - latest
    - require:
      - pkg: python-django

python-dateutil:
  pkg:
    - latest

python-mimeparse:
  pkg:
    - latest

python-django-tastypie:
  pkg:
    - latest
    - name: python-tastypie
    - require:
      - pkg: python-dateutil
      - pkg: python-mimeparse
      - pkg: python-django
