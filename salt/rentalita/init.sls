include:
  - default
  - django

rentalita:
  pkg:
    - latest
    - names:
      - python-scrapy
      - python-reportlab-accel
    - require:
      - pkg: python-django
