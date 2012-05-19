include:
  - python

python-dev:
  pkg:
    - latest
    - names:
      - python-doc
      - python-sphinx
    - require:
      - pkg: python
