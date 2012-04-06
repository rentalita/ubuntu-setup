include:
  - python.dev
  - lighttpd.dev
  - exim4.dev
  - sqlite3.dev
  - django

python-django-dev:
  pkg:
    - latest
    - names:
      - python-django-doc
      - python-django-debug-toolbar
    - require:
      - pkg: python-django
