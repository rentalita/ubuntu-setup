include:
  - recipies.python-dev
  - recipies.lighttpd-dev
  - recipies.exim4-dev
  - recipies.sqlite3-dev
  - recipies.django

python-django-dev:
  pkg:
    - latest
    - names:
      - python-django-doc
      - python-django-debug-toolbar
    - require:
      - pkg: python-django
