include:
  - default
  - django

rabbitmq-server:
  pkg:
    - latest
  service:
    - running
    - enable: True

python-celery:
  pkg:
    - latest
    - require:
      - pkg: rabbitmq-server

rentalita:
  pkg:
    - latest
    - names:
      - python-scrapy
      - python-reportlab-accel
    - require:
      - pkg: python-celery
      - pkg: python-django
