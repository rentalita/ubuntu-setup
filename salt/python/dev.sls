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
      - virtualenvwrapper
    - require:
      - pkg: python
