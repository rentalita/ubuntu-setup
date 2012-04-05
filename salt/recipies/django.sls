include:
  - recipies.python
  - recipies.lighttpd
  - recipies.exim4
  - recipies.sqlite3

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

# TODO: "git+git://github.com/rentalita/django-userena.git@bootstrap":
# python-django-userena:
#   pkg:
#     - latest
#     - require:
#       - pkg: python-imaging
#       - pkg: python-django
