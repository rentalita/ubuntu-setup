/etc/sudoers.d/99-python:
  file:
    - managed
    - source: salt://python/99-python
    - user: root
    - group: root
    - mode: 440
