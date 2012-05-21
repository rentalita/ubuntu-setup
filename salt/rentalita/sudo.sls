/etc/sudoers.d/99-rentalita:
  file:
    - managed
    - source: salt://rentalita/99-rentalita
    - user: root
    - group: root
    - mode: 440
