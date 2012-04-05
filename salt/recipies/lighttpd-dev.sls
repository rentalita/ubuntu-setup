include:
  - recipies.lighttpd

lighttpd-dev:
  pkg:
    - latest
    - names:
      - lighttpd-doc
    - require:
      - pkg: lighttpd
