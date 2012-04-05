include:
  - recipies.python

python-dev:
  pkg:
    - latest
    - names:
      - python-doc
      - pep8
      - pylint
      - python-sphinx
    - require:
      - pkg: python
