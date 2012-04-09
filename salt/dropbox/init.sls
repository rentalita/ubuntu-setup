include:
  - dropbox.apt

dropbox:
  pkg:
    - latest
    - names:
      - nautilus-dropbox
    - requires:
      - cmd: apt-update
