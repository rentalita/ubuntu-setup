/etc/sudoers.d/99-django:
  file:
    - managed
    - source: salt://django/99-django
    - user: root
    - group: root
    - mode: 440
