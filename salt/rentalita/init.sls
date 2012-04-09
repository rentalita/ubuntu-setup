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

python-django-celery:
  pip:
    - installed
    - name: django-celery
    - require:
      - pkg: python-celery
      - pkg: python-django

python-django-mailchimp:
  pip:
    - installed
    - name: django-mailchimp
    - require:
      - pkg: python-django

rentalita:
  pkg:
    - latest
    - names:
      - python-scrapy
      - python-reportlab-accel
    - require:
      - pkg: python-django
      - pkg: python-django-celery
      - pkg: python-django-mailchimp
