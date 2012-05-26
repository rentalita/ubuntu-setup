include:
  - sudo.groups
  - python.sudo
  - django.sudo
  - rentalita.sudo

/etc/sudoers.d:
  file:
    - directory
    - clean: True
    - require:
      - file: /etc/sudoers.d/99-python
      - file: /etc/sudoers.d/99-django
      - file: /etc/sudoers.d/99-rentalita

sudo:
  pkg:
    - latest
    - require:
      - group: sudo
      - file: /etc/sudoers.d
