python:
  pkg:
    - latest
    - names:
      - python-setuptools
      - python-pip
      - python-coverage
      - python-nose
      - pep8
      - pylint

/etc/sudoers.d/99-python:
  file:
    - managed
    - source: salt://python/99-python
    - user: root
    - group: root
    - mode: 440
