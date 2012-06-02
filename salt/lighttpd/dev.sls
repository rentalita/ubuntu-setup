include:
  - lighttpd

lighttpd-dev:
  pkg:
    - latest
    - names:
      - lighttpd-doc
    - require:
      - service: lighttpd
