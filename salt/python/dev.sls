include:
  - python

python-dev:
  pkg:
    - latest
    - names:
      - python-doc
      - python-sphinx
      - pep8
      - fabric
    - require:
      - pkg: python
