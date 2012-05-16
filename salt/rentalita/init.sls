include:
  - django

python-django-lutefisk:
  pkg:
    - latest
    - require:
      - pkg: python-django

rabbitmq-server:
  pkg:
    - latest
  service:
    - running
    - enable: True

python-kombu:
  pkg:
    - latest

python-celery:
  pkg:
    - latest
    - require:
      - pkg: rabbitmq-server
      - pkg: python-kombu

python-django-picklefield:
  pkg:
    - latest
    - require:
      - pkg: python-django

python-django-celery:
  pkg:
    - latest
    - require:
      - pkg: python-celery
      - pkg: python-django
      - pkg: python-django-picklefield

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
      - python-imaging
      - python-scrapy
      - python-reportlab-accel
    - require:
      - pkg: python-django
      - pkg: python-django-lutefisk
      - pkg: python-django-celery
      - pip: python-django-mailchimp
