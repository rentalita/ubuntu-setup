include:
  - exim4

exim4-dev:
  pkg:
    - latest
    - names:
      - exim4-doc-html
      - exim4-doc-info
    - require:
      - pkg: exim4
