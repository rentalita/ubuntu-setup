exim4-daemon-light:
  pkg:
    - latest

exim4:
  pkg:
    - latest
    - require:
      - pkg: exim4-daemon-light
  service:
    - running
    - enabled: True
