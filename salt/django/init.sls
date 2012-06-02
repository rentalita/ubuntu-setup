include:
  - python
  - sqlite3
  - jquery
  - lighttpd
  - exim4

python-flup:
  pkg:
    - latest

python-django:
  pkg:
    - latest
    - require:
      - pkg: python
      - pkg: sqlite3
      - pkg: jquery
      - service: lighttpd
      - service: exim4
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
