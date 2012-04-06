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

python-imaging:
  pkg:
    - latest

python-django-userena:
  pip:
    - installed
    - name: git+git://github.com/rentalita/django-userena.git@bootstrap
    - require:
      - pkg: python-imaging
      - pkg: python-django

python-django-celery:
  pip:
    - installed
    - name: django-celery
    - require:
      - pkg: python-django

python-django-mailchimp:
  pip:
    - installed
    - name: django-mailchimp
    - require:
      - pkg: python-django
