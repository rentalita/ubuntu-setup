include:
  - dropbox.apt

dropbox:
  pkg:
    - latest
    - names:
      - nautilus-dropbox
    - require:
      - cmd: apt-update
